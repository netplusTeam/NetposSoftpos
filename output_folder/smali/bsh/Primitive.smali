.class public final Lbsh/Primitive;
.super Ljava/lang/Object;
.source "Primitive.java"

# interfaces
.implements Lbsh/ParserConstants;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbsh/Primitive$Special;
    }
.end annotation


# static fields
.field public static FALSE:Lbsh/Primitive;

.field public static final NULL:Lbsh/Primitive;

.field public static TRUE:Lbsh/Primitive;

.field public static final VOID:Lbsh/Primitive;

.field static wrapperMap:Ljava/util/Hashtable;


# instance fields
.field private value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    .line 73
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Byte;

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Short;

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Character;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    const-class v1, Ljava/lang/Double;

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    .line 108
    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Z)V

    sput-object v0, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    .line 109
    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Z)V

    sput-object v0, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    .line 116
    new-instance v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1
    .param p1, "value"    # B

    .line 135
    new-instance v0, Ljava/lang/Byte;

    invoke-direct {v0, p1}, Ljava/lang/Byte;-><init>(B)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 1
    .param p1, "value"    # C

    .line 137
    new-instance v0, Ljava/lang/Character;

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "value"    # D

    .line 141
    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, p1, p2}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "value"    # F

    .line 140
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "value"    # I

    .line 138
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "value"    # J

    .line 139
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p1, p2}, Ljava/lang/Long;-><init>(J)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    if-eqz p1, :cond_2

    .line 125
    sget-object v0, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_1

    sget-object v0, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-eq p1, v0, :cond_1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a wrapper type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_1
    :goto_0
    iput-object p1, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    .line 132
    return-void

    .line 122
    :cond_2
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "Use Primitve.NULL instead of Primitive(null)"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(S)V
    .locals 1
    .param p1, "value"    # S

    .line 136
    new-instance v0, Ljava/lang/Short;

    invoke-direct {v0, p1}, Ljava/lang/Short;-><init>(S)V

    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "value"    # Z

    .line 134
    if-eqz p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    invoke-direct {p0, v0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static binaryOperation(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .param p0, "obj1"    # Ljava/lang/Object;
    .param p1, "obj2"    # Ljava/lang/Object;
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 197
    const-class v0, Lbsh/Primitive;

    sget-object v1, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v1, :cond_7

    if-eq p1, v1, :cond_7

    .line 200
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v1, :cond_6

    if-eq p1, v1, :cond_6

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 206
    .local v1, "lhsOrgType":Ljava/lang/Class;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 209
    .local v2, "rhsOrgType":Ljava/lang/Class;
    instance-of v3, p0, Lbsh/Primitive;

    if-eqz v3, :cond_0

    .line 210
    move-object v3, p0

    check-cast v3, Lbsh/Primitive;

    invoke-virtual {v3}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 211
    :cond_0
    instance-of v3, p1, Lbsh/Primitive;

    if-eqz v3, :cond_1

    .line 212
    move-object v3, p1

    check-cast v3, Lbsh/Primitive;

    invoke-virtual {v3}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 214
    :cond_1
    invoke-static {p0, p1}, Lbsh/Primitive;->promotePrimitives(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .line 215
    .local v3, "operands":[Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 216
    .local v4, "lhs":Ljava/lang/Object;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 218
    .local v5, "rhs":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 224
    :try_start_0
    invoke-static {v4, v5, p2}, Lbsh/Primitive;->binaryOperationImpl(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .local v6, "result":Ljava/lang/Object;
    nop

    .line 230
    instance-of v7, v6, Ljava/lang/Boolean;

    if-eqz v7, :cond_3

    .line 231
    move-object v0, v6

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_0

    :cond_2
    sget-object v0, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_0
    return-object v0

    .line 236
    :cond_3
    if-ne v1, v0, :cond_4

    if-ne v2, v0, :cond_4

    .line 237
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, v6}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 239
    :cond_4
    return-object v6

    .line 225
    .end local v6    # "result":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/ArithmeticException;
    new-instance v6, Lbsh/UtilTargetError;

    const-string v7, "Arithemetic Exception in binary op"

    invoke-direct {v6, v7, v0}, Lbsh/UtilTargetError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 219
    .end local v0    # "e":Ljava/lang/ArithmeticException;
    :cond_5
    new-instance v0, Lbsh/UtilEvalError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Type mismatch in operator.  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 220
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be used with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    .end local v1    # "lhsOrgType":Ljava/lang/Class;
    .end local v2    # "rhsOrgType":Ljava/lang/Class;
    .end local v3    # "operands":[Ljava/lang/Object;
    .end local v4    # "lhs":Ljava/lang/Object;
    .end local v5    # "rhs":Ljava/lang/Object;
    :cond_6
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Undefined variable, class, or \'void\' literal in binary operation"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_7
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Null value or \'null\' literal in binary operation"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static binaryOperationImpl(Ljava/lang/Object;Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 2
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 245
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 246
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {v0, v1, p2}, Lbsh/Primitive;->booleanBinaryOperation(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 247
    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 248
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v1, p1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1, p2}, Lbsh/Primitive;->intBinaryOperation(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 249
    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 250
    move-object v0, p0

    check-cast v0, Ljava/lang/Long;

    move-object v1, p1

    check-cast v1, Ljava/lang/Long;

    invoke-static {v0, v1, p2}, Lbsh/Primitive;->longBinaryOperation(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 251
    :cond_2
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    .line 252
    move-object v0, p0

    check-cast v0, Ljava/lang/Float;

    move-object v1, p1

    check-cast v1, Ljava/lang/Float;

    invoke-static {v0, v1, p2}, Lbsh/Primitive;->floatBinaryOperation(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 253
    :cond_3
    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_4

    .line 254
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v1, p1

    check-cast v1, Ljava/lang/Double;

    invoke-static {v0, v1, p2}, Lbsh/Primitive;->doubleBinaryOperation(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 256
    :cond_4
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Invalid types in binary operator"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static booleanBinaryOperation(Ljava/lang/Boolean;Ljava/lang/Boolean;I)Ljava/lang/Boolean;
    .locals 4
    .param p0, "B1"    # Ljava/lang/Boolean;
    .param p1, "B2"    # Ljava/lang/Boolean;
    .param p2, "kind"    # I

    .line 261
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 262
    .local v0, "lhs":Z
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 264
    .local v1, "rhs":Z
    packed-switch p2, :pswitch_data_0

    .line 281
    :pswitch_0
    new-instance v2, Lbsh/InterpreterError;

    const-string/jumbo v3, "unimplemented binary operator"

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 278
    :pswitch_1
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    .line 274
    :pswitch_2
    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    :goto_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_2
    return-object v2

    .line 270
    :pswitch_3
    if-eq v0, v1, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v2

    .line 267
    :pswitch_4
    if-ne v0, v1, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static booleanUnaryOperation(Ljava/lang/Boolean;I)Z
    .locals 3
    .param p0, "B"    # Ljava/lang/Boolean;
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 666
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 667
    .local v0, "operand":Z
    packed-switch p1, :pswitch_data_0

    .line 672
    new-instance v1, Lbsh/UtilEvalError;

    const-string v2, "Operator inappropriate for boolean"

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 670
    :pswitch_0
    xor-int/lit8 v1, v0, 0x1

    return v1

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch
.end method

.method public static boxType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p0, "primitiveType"    # Ljava/lang/Class;

    .line 908
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 909
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 910
    return-object v0

    .line 911
    :cond_0
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a primitive type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;
    .locals 3
    .param p0, "toType"    # Ljava/lang/Class;
    .param p1, "fromType"    # Ljava/lang/Class;
    .param p2, "fromValue"    # Lbsh/Primitive;
    .param p3, "checkOnly"    # Z
    .param p4, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 972
    if-eqz p3, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 973
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast param 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 974
    :cond_1
    :goto_0
    if-nez p3, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 975
    :cond_2
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad cast param 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_3
    :goto_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 977
    :cond_4
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad fromType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_5
    :goto_2
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p2, v0, :cond_7

    if-nez p1, :cond_6

    goto :goto_3

    .line 979
    :cond_6
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 1"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 980
    :cond_7
    :goto_3
    sget-object v1, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p2, v1, :cond_9

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_8

    goto :goto_4

    .line 981
    :cond_8
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "inconsistent args 2"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 984
    :cond_9
    :goto_4
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v1, :cond_b

    .line 985
    if-eqz p3, :cond_a

    .line 986
    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-object v0

    .line 988
    :cond_a
    invoke-static {p0}, Lbsh/Reflect;->normalizeClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "void value"

    invoke-static {v0, v1, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    .line 992
    :cond_b
    const/4 v1, 0x0

    .line 993
    .local v1, "value":Ljava/lang/Object;
    if-eqz p2, :cond_c

    .line 994
    invoke-virtual {p2}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 996
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 999
    if-nez p1, :cond_e

    .line 1000
    if-eqz p3, :cond_d

    .line 1001
    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-object v0

    .line 1003
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "primitive type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Null value"

    invoke-static {v0, v2, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    .line 1023
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_12

    .line 1025
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_10

    .line 1026
    if-eqz p3, :cond_f

    .line 1027
    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-object v0

    .line 1029
    :cond_f
    invoke-static {p0, p1, p4}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    .line 1031
    :cond_10
    if-eqz p3, :cond_11

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_5

    :cond_11
    move-object v0, p2

    :goto_5
    return-object v0

    .line 1038
    :cond_12
    const/4 v0, 0x1

    if-ne p4, v0, :cond_14

    .line 1039
    invoke-static {p0, p1}, Lbsh/Types;->isJavaAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 1041
    if-eqz p3, :cond_13

    .line 1042
    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-object v0

    .line 1044
    :cond_13
    invoke-static {p0, p1, p4}, Lbsh/Types;->castError(Ljava/lang/Class;Ljava/lang/Class;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0

    .line 1047
    :cond_14
    if-eqz p3, :cond_15

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    goto :goto_6

    :cond_15
    new-instance v0, Lbsh/Primitive;

    .line 1048
    invoke-static {p0, v1}, Lbsh/Primitive;->castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v2}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    :goto_6
    return-object v0

    .line 1011
    :cond_16
    if-nez p1, :cond_18

    .line 1012
    if-eqz p3, :cond_17

    sget-object v0, Lbsh/Types;->VALID_CAST:Lbsh/Primitive;

    :cond_17
    return-object v0

    .line 1015
    :cond_18
    if-eqz p3, :cond_19

    .line 1016
    sget-object v0, Lbsh/Types;->INVALID_CAST:Lbsh/Primitive;

    return-object v0

    .line 1018
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "object type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "primitive value"

    invoke-static {v0, v2, p4}, Lbsh/Types;->castError(Ljava/lang/String;Ljava/lang/String;I)Lbsh/UtilEvalError;

    move-result-object v0

    throw v0
.end method

.method static castWrapper(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p0, "toType"    # Ljava/lang/Class;
    .param p1, "value"    # Ljava/lang/Object;

    .line 1067
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1069
    if-eqz p1, :cond_b

    .line 1071
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 1073
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 1076
    return-object p1

    .line 1074
    :cond_0
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad wrapper cast of boolean"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1080
    :cond_1
    instance-of v0, p1, Ljava/lang/Character;

    if-eqz v0, :cond_2

    .line 1081
    new-instance v0, Ljava/lang/Integer;

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    move-object p1, v0

    .line 1083
    :cond_2
    nop

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_a

    .line 1086
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    .line 1088
    .local v0, "number":Ljava/lang/Number;
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_3

    .line 1089
    new-instance v1, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    return-object v1

    .line 1090
    :cond_3
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_4

    .line 1091
    new-instance v1, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Short;-><init>(S)V

    return-object v1

    .line 1092
    :cond_4
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_5

    .line 1093
    new-instance v1, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    int-to-char v2, v2

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    return-object v1

    .line 1094
    :cond_5
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_6

    .line 1095
    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 1096
    :cond_6
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_7

    .line 1097
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    return-object v1

    .line 1098
    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_8

    .line 1099
    new-instance v1, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Float;-><init>(F)V

    return-object v1

    .line 1100
    :cond_8
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v1, :cond_9

    .line 1101
    new-instance v1, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Double;-><init>(D)V

    return-object v1

    .line 1103
    :cond_9
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "error in wrapper cast"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1084
    .end local v0    # "number":Ljava/lang/Number;
    :cond_a
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "bad type in cast"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1070
    :cond_b
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "null value in castWrapper, guard"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_c
    new-instance v0, Lbsh/InterpreterError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type in castWrapper: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static doubleBinaryOperation(Ljava/lang/Double;Ljava/lang/Double;I)Ljava/lang/Object;
    .locals 7
    .param p0, "D1"    # Ljava/lang/Double;
    .param p1, "D2"    # Ljava/lang/Double;
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 443
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 444
    .local v0, "lhs":D
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    .line 446
    .local v2, "rhs":D
    packed-switch p2, :pswitch_data_0

    .line 497
    :pswitch_0
    new-instance v4, Lbsh/InterpreterError;

    const-string v5, "Unimplemented binary double operator"

    invoke-direct {v4, v5}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 494
    :pswitch_1
    new-instance v4, Lbsh/UtilEvalError;

    const-string v5, "Can\'t shift doubles"

    invoke-direct {v4, v5}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 485
    :pswitch_2
    new-instance v4, Ljava/lang/Double;

    rem-double v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 482
    :pswitch_3
    new-instance v4, Ljava/lang/Double;

    div-double v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 479
    :pswitch_4
    new-instance v4, Ljava/lang/Double;

    mul-double v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 476
    :pswitch_5
    new-instance v4, Ljava/lang/Double;

    sub-double v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 473
    :pswitch_6
    new-instance v4, Ljava/lang/Double;

    add-double v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Double;-><init>(D)V

    return-object v4

    .line 469
    :pswitch_7
    cmpl-double v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v4

    .line 466
    :pswitch_8
    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v4

    .line 462
    :pswitch_9
    cmpg-double v4, v0, v2

    if-gtz v4, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v4

    .line 458
    :pswitch_a
    cmpl-double v4, v0, v2

    if-nez v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v4

    .line 451
    :pswitch_b
    cmpg-double v4, v0, v2

    if-gez v4, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v4

    .line 455
    :pswitch_c
    cmpl-double v4, v0, v2

    if-lez v4, :cond_5

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static doubleUnaryOperation(Ljava/lang/Double;I)D
    .locals 4
    .param p0, "D"    # Ljava/lang/Double;
    .param p1, "kind"    # I

    .line 735
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 737
    .local v0, "operand":D
    packed-switch p1, :pswitch_data_0

    .line 744
    new-instance v2, Lbsh/InterpreterError;

    const-string v3, "bad double unaryOperation"

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 742
    :pswitch_0
    neg-double v2, v0

    return-wide v2

    .line 740
    :pswitch_1
    return-wide v0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static floatBinaryOperation(Ljava/lang/Float;Ljava/lang/Float;I)Ljava/lang/Object;
    .locals 4
    .param p0, "F1"    # Ljava/lang/Float;
    .param p1, "F2"    # Ljava/lang/Float;
    .param p2, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 505
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 506
    .local v0, "lhs":F
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 508
    .local v1, "rhs":F
    packed-switch p2, :pswitch_data_0

    .line 559
    :pswitch_0
    new-instance v2, Lbsh/InterpreterError;

    const-string v3, "Unimplemented binary float operator"

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 556
    :pswitch_1
    new-instance v2, Lbsh/UtilEvalError;

    const-string v3, "Can\'t shift floats "

    invoke-direct {v2, v3}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 547
    :pswitch_2
    new-instance v2, Ljava/lang/Float;

    rem-float v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 544
    :pswitch_3
    new-instance v2, Ljava/lang/Float;

    div-float v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 541
    :pswitch_4
    new-instance v2, Ljava/lang/Float;

    mul-float v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 538
    :pswitch_5
    new-instance v2, Ljava/lang/Float;

    sub-float v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 535
    :pswitch_6
    new-instance v2, Ljava/lang/Float;

    add-float v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(F)V

    return-object v2

    .line 531
    :pswitch_7
    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    .line 528
    :pswitch_8
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v2

    .line 524
    :pswitch_9
    cmpg-float v2, v0, v1

    if-gtz v2, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v2

    .line 520
    :pswitch_a
    cmpl-float v2, v0, v1

    if-nez v2, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v2

    .line 513
    :pswitch_b
    cmpg-float v2, v0, v1

    if-gez v2, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v2

    .line 517
    :pswitch_c
    cmpl-float v2, v0, v1

    if-lez v2, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static floatUnaryOperation(Ljava/lang/Float;I)F
    .locals 3
    .param p0, "F"    # Ljava/lang/Float;
    .param p1, "kind"    # I

    .line 720
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 722
    .local v0, "operand":F
    packed-switch p1, :pswitch_data_0

    .line 729
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "bad float unaryOperation"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 727
    :pswitch_0
    neg-float v1, v0

    return v1

    .line 725
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDefaultValue(Ljava/lang/Class;)Lbsh/Primitive;
    .locals 3
    .param p0, "type"    # Ljava/lang/Class;

    .line 888
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 890
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 891
    sget-object v0, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    return-object v0

    .line 895
    :cond_1
    :try_start_0
    new-instance v0, Lbsh/Primitive;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbsh/Primitive;-><init>(I)V

    invoke-virtual {v0, p0, v1}, Lbsh/Primitive;->castToType(Ljava/lang/Class;I)Lbsh/Primitive;

    move-result-object v0
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 896
    :catch_0
    move-exception v0

    .line 897
    .local v0, "e":Lbsh/UtilEvalError;
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "bad cast"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 889
    .end local v0    # "e":Lbsh/UtilEvalError;
    :cond_2
    :goto_0
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    return-object v0
.end method

.method static intBinaryOperation(Ljava/lang/Integer;Ljava/lang/Integer;I)Ljava/lang/Object;
    .locals 4
    .param p0, "I1"    # Ljava/lang/Integer;
    .param p1, "I2"    # Ljava/lang/Integer;
    .param p2, "kind"    # I

    .line 365
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    .local v0, "lhs":I
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 368
    .local v1, "rhs":I
    packed-switch p2, :pswitch_data_0

    .line 434
    :pswitch_0
    new-instance v2, Lbsh/InterpreterError;

    const-string v3, "Unimplemented binary integer operator"

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :pswitch_1
    new-instance v2, Ljava/lang/Integer;

    ushr-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 416
    :pswitch_2
    new-instance v2, Ljava/lang/Integer;

    shr-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 412
    :pswitch_3
    new-instance v2, Ljava/lang/Integer;

    shl-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 407
    :pswitch_4
    new-instance v2, Ljava/lang/Integer;

    rem-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 431
    :pswitch_5
    new-instance v2, Ljava/lang/Integer;

    xor-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 428
    :pswitch_6
    new-instance v2, Ljava/lang/Integer;

    or-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 424
    :pswitch_7
    new-instance v2, Ljava/lang/Integer;

    and-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 404
    :pswitch_8
    new-instance v2, Ljava/lang/Integer;

    div-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 401
    :pswitch_9
    new-instance v2, Ljava/lang/Integer;

    mul-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 398
    :pswitch_a
    new-instance v2, Ljava/lang/Integer;

    sub-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 395
    :pswitch_b
    new-instance v2, Ljava/lang/Integer;

    add-int v3, v0, v1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 391
    :pswitch_c
    if-eq v0, v1, :cond_0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v2

    .line 388
    :pswitch_d
    if-lt v0, v1, :cond_1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v2

    .line 384
    :pswitch_e
    if-gt v0, v1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v2

    .line 380
    :pswitch_f
    if-ne v0, v1, :cond_3

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v2

    .line 373
    :pswitch_10
    if-ge v0, v1, :cond_4

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v2

    .line 377
    :pswitch_11
    if-le v0, v1, :cond_5

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static intUnaryOperation(Ljava/lang/Integer;I)I
    .locals 3
    .param p0, "I"    # Ljava/lang/Integer;
    .param p1, "kind"    # I

    .line 678
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 680
    .local v0, "operand":I
    sparse-switch p1, :sswitch_data_0

    .line 693
    new-instance v1, Lbsh/InterpreterError;

    const-string v2, "bad integer unaryOperation"

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 685
    :sswitch_0
    neg-int v1, v0

    return v1

    .line 683
    :sswitch_1
    return v0

    .line 691
    :sswitch_2
    add-int/lit8 v1, v0, -0x1

    return v1

    .line 689
    :sswitch_3
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 687
    :sswitch_4
    not-int v1, v0

    return v1

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isWrapperType(Ljava/lang/Class;)Z
    .locals 1
    .param p0, "type"    # Ljava/lang/Class;

    .line 1053
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static longBinaryOperation(Ljava/lang/Long;Ljava/lang/Long;I)Ljava/lang/Object;
    .locals 7
    .param p0, "L1"    # Ljava/lang/Long;
    .param p1, "L2"    # Ljava/lang/Long;
    .param p2, "kind"    # I

    .line 288
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 289
    .local v0, "lhs":J
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 291
    .local v2, "rhs":J
    packed-switch p2, :pswitch_data_0

    .line 357
    :pswitch_0
    new-instance v4, Lbsh/InterpreterError;

    const-string v5, "Unimplemented binary long operator"

    invoke-direct {v4, v5}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v4

    .line 343
    :pswitch_1
    new-instance v4, Ljava/lang/Long;

    long-to-int v5, v2

    ushr-long v5, v0, v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 339
    :pswitch_2
    new-instance v4, Ljava/lang/Long;

    long-to-int v5, v2

    shr-long v5, v0, v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 335
    :pswitch_3
    new-instance v4, Ljava/lang/Long;

    long-to-int v5, v2

    shl-long v5, v0, v5

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 330
    :pswitch_4
    new-instance v4, Ljava/lang/Long;

    rem-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 354
    :pswitch_5
    new-instance v4, Ljava/lang/Long;

    xor-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 351
    :pswitch_6
    new-instance v4, Ljava/lang/Long;

    or-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 347
    :pswitch_7
    new-instance v4, Ljava/lang/Long;

    and-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 327
    :pswitch_8
    new-instance v4, Ljava/lang/Long;

    div-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 324
    :pswitch_9
    new-instance v4, Ljava/lang/Long;

    mul-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 321
    :pswitch_a
    new-instance v4, Ljava/lang/Long;

    sub-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 318
    :pswitch_b
    new-instance v4, Ljava/lang/Long;

    add-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    return-object v4

    .line 314
    :pswitch_c
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v4

    .line 311
    :pswitch_d
    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v4

    .line 307
    :pswitch_e
    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_2
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v4

    .line 303
    :pswitch_f
    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    return-object v4

    .line 296
    :pswitch_10
    cmp-long v4, v0, v2

    if-gez v4, :cond_4

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_4
    return-object v4

    .line 300
    :pswitch_11
    cmp-long v4, v0, v2

    if-lez v4, :cond_5

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_5

    :cond_5
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    return-object v4

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method static longUnaryOperation(Ljava/lang/Long;I)J
    .locals 4
    .param p0, "L"    # Ljava/lang/Long;
    .param p1, "kind"    # I

    .line 699
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 701
    .local v0, "operand":J
    const-wide/16 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 714
    new-instance v2, Lbsh/InterpreterError;

    const-string v3, "bad long unaryOperation"

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 706
    :sswitch_0
    neg-long v2, v0

    return-wide v2

    .line 704
    :sswitch_1
    return-wide v0

    .line 712
    :sswitch_2
    sub-long v2, v0, v2

    return-wide v2

    .line 710
    :sswitch_3
    add-long/2addr v2, v0

    return-wide v2

    .line 708
    :sswitch_4
    not-long v2, v0

    return-wide v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x57 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method static promotePrimitives(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;

    .line 583
    invoke-static {p0}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 584
    invoke-static {p1}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 586
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_8

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_8

    .line 588
    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    .line 589
    .local v0, "lnum":Ljava/lang/Number;
    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    .line 593
    .local v1, "rnum":Ljava/lang/Number;
    instance-of v2, v0, Ljava/lang/Double;

    move v3, v2

    .local v3, "b":Z
    if-nez v2, :cond_6

    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_0

    goto :goto_1

    .line 600
    :cond_0
    instance-of v2, v0, Ljava/lang/Float;

    move v3, v2

    if-nez v2, :cond_4

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_1

    goto :goto_0

    .line 607
    :cond_1
    instance-of v2, v0, Ljava/lang/Long;

    move v3, v2

    if-nez v2, :cond_2

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_8

    .line 609
    :cond_2
    if-eqz v3, :cond_3

    .line 610
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object p1, v2

    goto :goto_2

    .line 612
    :cond_3
    new-instance v2, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Long;-><init>(J)V

    move-object p0, v2

    goto :goto_2

    .line 602
    :cond_4
    :goto_0
    if-eqz v3, :cond_5

    .line 603
    new-instance v2, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Float;-><init>(F)V

    move-object p1, v2

    goto :goto_2

    .line 605
    :cond_5
    new-instance v2, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Float;-><init>(F)V

    move-object p0, v2

    goto :goto_2

    .line 595
    :cond_6
    :goto_1
    if-eqz v3, :cond_7

    .line 596
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    move-object p1, v2

    goto :goto_2

    .line 598
    :cond_7
    new-instance v2, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/lang/Double;-><init>(D)V

    move-object p0, v2

    .line 616
    .end local v0    # "lnum":Ljava/lang/Number;
    .end local v1    # "rnum":Ljava/lang/Number;
    .end local v3    # "b":Z
    :cond_8
    :goto_2
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method static promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "wrapper"    # Ljava/lang/Object;

    .line 569
    instance-of v0, p0, Ljava/lang/Character;

    if-eqz v0, :cond_0

    .line 570
    new-instance v0, Ljava/lang/Integer;

    move-object v1, p0

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0

    .line 571
    :cond_0
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 574
    :cond_1
    return-object p0

    .line 572
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/Integer;

    move-object v1, p0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method

.method public static unaryOperation(Lbsh/Primitive;I)Lbsh/Primitive;
    .locals 5
    .param p0, "val"    # Lbsh/Primitive;
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 622
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_b

    .line 625
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_a

    .line 629
    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 630
    .local v0, "operandType":Ljava/lang/Class;
    invoke-virtual {p0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lbsh/Primitive;->promoteToInteger(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 632
    .local v1, "operand":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    .line 633
    move-object v2, v1

    check-cast v2, Ljava/lang/Boolean;

    invoke-static {v2, p1}, Lbsh/Primitive;->booleanUnaryOperation(Ljava/lang/Boolean;I)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_0

    :cond_0
    sget-object v2, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_0
    return-object v2

    .line 635
    :cond_1
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 637
    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-static {v2, p1}, Lbsh/Primitive;->intUnaryOperation(Ljava/lang/Integer;I)I

    move-result v2

    .line 640
    .local v2, "result":I
    const/16 v3, 0x64

    if-eq p1, v3, :cond_2

    const/16 v3, 0x65

    if-ne p1, v3, :cond_5

    .line 642
    :cond_2
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_3

    .line 643
    new-instance v3, Lbsh/Primitive;

    int-to-byte v4, v2

    invoke-direct {v3, v4}, Lbsh/Primitive;-><init>(B)V

    return-object v3

    .line 644
    :cond_3
    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_4

    .line 645
    new-instance v3, Lbsh/Primitive;

    int-to-short v4, v2

    invoke-direct {v3, v4}, Lbsh/Primitive;-><init>(S)V

    return-object v3

    .line 646
    :cond_4
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, v3, :cond_5

    .line 647
    new-instance v3, Lbsh/Primitive;

    int-to-char v4, v2

    invoke-direct {v3, v4}, Lbsh/Primitive;-><init>(C)V

    return-object v3

    .line 650
    :cond_5
    new-instance v3, Lbsh/Primitive;

    invoke-direct {v3, v2}, Lbsh/Primitive;-><init>(I)V

    return-object v3

    .line 652
    .end local v2    # "result":I
    :cond_6
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_7

    .line 653
    new-instance v2, Lbsh/Primitive;

    move-object v3, v1

    check-cast v3, Ljava/lang/Long;

    invoke-static {v3, p1}, Lbsh/Primitive;->longUnaryOperation(Ljava/lang/Long;I)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lbsh/Primitive;-><init>(J)V

    return-object v2

    .line 654
    :cond_7
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_8

    .line 655
    new-instance v2, Lbsh/Primitive;

    move-object v3, v1

    check-cast v3, Ljava/lang/Float;

    invoke-static {v3, p1}, Lbsh/Primitive;->floatUnaryOperation(Ljava/lang/Float;I)F

    move-result v3

    invoke-direct {v2, v3}, Lbsh/Primitive;-><init>(F)V

    return-object v2

    .line 656
    :cond_8
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_9

    .line 657
    new-instance v2, Lbsh/Primitive;

    move-object v3, v1

    check-cast v3, Ljava/lang/Double;

    invoke-static {v3, p1}, Lbsh/Primitive;->doubleUnaryOperation(Ljava/lang/Double;I)D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lbsh/Primitive;-><init>(D)V

    return-object v2

    .line 659
    :cond_9
    new-instance v2, Lbsh/InterpreterError;

    const-string v3, "An error occurred.  Please call technical support."

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 626
    .end local v0    # "operandType":Ljava/lang/Class;
    .end local v1    # "operand":Ljava/lang/Object;
    :cond_a
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "illegal use of undefined object or \'void\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0

    .line 623
    :cond_b
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "illegal use of null object or \'null\' literal"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unboxType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 4
    .param p0, "wrapperType"    # Ljava/lang/Class;

    .line 922
    sget-object v0, Lbsh/Primitive;->wrapperMap:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 923
    .local v0, "c":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 924
    return-object v0

    .line 925
    :cond_0
    new-instance v1, Lbsh/InterpreterError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not a primitive wrapper type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static unwrap(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 819
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_0

    .line 820
    const/4 v0, 0x0

    return-object v0

    .line 823
    :cond_0
    instance-of v0, p0, Lbsh/Primitive;

    if-eqz v0, :cond_1

    .line 824
    move-object v0, p0

    check-cast v0, Lbsh/Primitive;

    invoke-virtual {v0}, Lbsh/Primitive;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 826
    :cond_1
    return-object p0
.end method

.method public static unwrap([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p0, "args"    # [Ljava/lang/Object;

    .line 836
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 837
    .local v0, "oa":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 838
    aget-object v2, p0, v1

    invoke-static {v2}, Lbsh/Primitive;->unwrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 837
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 839
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/Class;

    .line 866
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 867
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    return-object v0

    .line 869
    :cond_0
    if-nez p0, :cond_1

    .line 870
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    return-object v0

    .line 872
    :cond_1
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 873
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lbsh/Primitive;->TRUE:Lbsh/Primitive;

    goto :goto_0

    :cond_2
    sget-object v0, Lbsh/Primitive;->FALSE:Lbsh/Primitive;

    :goto_0
    return-object v0

    .line 876
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->isWrapperType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 877
    new-instance v0, Lbsh/Primitive;

    invoke-direct {v0, p0}, Lbsh/Primitive;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 879
    :cond_4
    return-object p0
.end method

.method public static wrap([Ljava/lang/Object;[Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 4
    .param p0, "args"    # [Ljava/lang/Object;
    .param p1, "paramTypes"    # [Ljava/lang/Class;

    .line 846
    if-nez p0, :cond_0

    .line 847
    const/4 v0, 0x0

    return-object v0

    .line 849
    :cond_0
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 850
    .local v0, "oa":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 851
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lbsh/Primitive;->wrap(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 850
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 852
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method


# virtual methods
.method public booleanValue()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 758
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 759
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 761
    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a boolean"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public castToType(Ljava/lang/Class;I)Lbsh/Primitive;
    .locals 2
    .param p1, "toType"    # Ljava/lang/Class;
    .param p2, "operation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 940
    nop

    .line 941
    invoke-virtual {p0}, Lbsh/Primitive;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 940
    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1, p2}, Lbsh/Primitive;->castPrimitive(Ljava/lang/Class;Ljava/lang/Class;Lbsh/Primitive;ZI)Lbsh/Primitive;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 793
    instance-of v0, p1, Lbsh/Primitive;

    if-eqz v0, :cond_0

    .line 794
    move-object v0, p1

    check-cast v0, Lbsh/Primitive;

    iget-object v0, v0, Lbsh/Primitive;->value:Ljava/lang/Object;

    iget-object v1, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 796
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 174
    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-ne p0, v0, :cond_0

    .line 175
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    return-object v0

    .line 179
    :cond_0
    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-ne p0, v0, :cond_1

    .line 180
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lbsh/Primitive;->unboxType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .line 148
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_0

    .line 149
    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-eq v0, v1, :cond_1

    .line 154
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    return-object v0

    .line 152
    :cond_1
    new-instance v0, Lbsh/InterpreterError;

    const-string v1, "attempt to unwrap void type"

    invoke-direct {v0, v1}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    .line 805
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x15

    return v0
.end method

.method public intValue()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 750
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 751
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0

    .line 753
    :cond_0
    new-instance v0, Lbsh/UtilEvalError;

    const-string v1, "Primitive not a number"

    invoke-direct {v0, v1}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNumber()Z
    .locals 1

    .line 769
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Lbsh/Primitive;->NULL:Lbsh/Primitive;

    if-eq p0, v0, :cond_0

    sget-object v0, Lbsh/Primitive;->VOID:Lbsh/Primitive;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public numberValue()Ljava/lang/Number;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 775
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    .line 778
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Character;

    if-eqz v1, :cond_0

    .line 779
    new-instance v1, Ljava/lang/Integer;

    move-object v2, v0

    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v1

    .line 781
    :cond_0
    nop

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    .line 782
    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    return-object v1

    .line 784
    :cond_1
    new-instance v1, Lbsh/UtilEvalError;

    const-string v2, "Primitive not a number"

    invoke-direct {v1, v2}, Lbsh/UtilEvalError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->NULL_VALUE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_0

    .line 160
    const-string v0, "null"

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    sget-object v1, Lbsh/Primitive$Special;->VOID_TYPE:Lbsh/Primitive$Special;

    if-ne v0, v1, :cond_1

    .line 162
    const-string/jumbo v0, "void"

    return-object v0

    .line 164
    :cond_1
    iget-object v0, p0, Lbsh/Primitive;->value:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
