.class public Ljavassist/bytecode/SignatureAttribute$MethodSignature;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodSignature"
.end annotation


# instance fields
.field exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

.field params:[Ljavassist/bytecode/SignatureAttribute$Type;

.field retType:Ljavassist/bytecode/SignatureAttribute$Type;

.field typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;


# direct methods
.method public constructor <init>([Ljavassist/bytecode/SignatureAttribute$TypeParameter;[Ljavassist/bytecode/SignatureAttribute$Type;Ljavassist/bytecode/SignatureAttribute$Type;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V
    .locals 3
    .param p1, "tp"    # [Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .param p2, "params"    # [Ljavassist/bytecode/SignatureAttribute$Type;
    .param p3, "ret"    # Ljavassist/bytecode/SignatureAttribute$Type;
    .param p4, "ex"    # [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array v1, v0, [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    .line 286
    if-nez p2, :cond_1

    new-array v1, v0, [Ljavassist/bytecode/SignatureAttribute$Type;

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    iput-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->params:[Ljavassist/bytecode/SignatureAttribute$Type;

    .line 287
    if-nez p3, :cond_2

    new-instance v1, Ljavassist/bytecode/SignatureAttribute$BaseType;

    const-string v2, "void"

    invoke-direct {v1, v2}, Ljavassist/bytecode/SignatureAttribute$BaseType;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object v1, p3

    :goto_2
    iput-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->retType:Ljavassist/bytecode/SignatureAttribute$Type;

    .line 288
    if-nez p4, :cond_3

    new-array v0, v0, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    goto :goto_3

    :cond_3
    move-object v0, p4

    :goto_3
    iput-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 289
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 4

    .line 342
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 343
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 344
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 345
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 346
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->encode(Ljava/lang/StringBuffer;)V

    .line 345
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    .end local v1    # "i":I
    :cond_0
    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 351
    :cond_1
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 352
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->params:[Ljavassist/bytecode/SignatureAttribute$Type;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 353
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljavassist/bytecode/SignatureAttribute$Type;->encode(Ljava/lang/StringBuffer;)V

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 355
    .end local v1    # "i":I
    :cond_2
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 356
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->retType:Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-virtual {v1, v0}, Ljavassist/bytecode/SignatureAttribute$Type;->encode(Ljava/lang/StringBuffer;)V

    .line 357
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 358
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 359
    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 360
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;->encode(Ljava/lang/StringBuffer;)V

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 363
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getExceptionTypes()[Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 316
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public getParameterTypes()[Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 1

    .line 303
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->params:[Ljavassist/bytecode/SignatureAttribute$Type;

    return-object v0
.end method

.method public getReturnType()Ljavassist/bytecode/SignatureAttribute$Type;
    .locals 1

    .line 308
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->retType:Ljavassist/bytecode/SignatureAttribute$Type;

    return-object v0
.end method

.method public getTypeParameters()[Ljavassist/bytecode/SignatureAttribute$TypeParameter;
    .locals 1

    .line 296
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 323
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->typeParams:[Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeParameter;)V

    .line 326
    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->params:[Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Type;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$Type;)V

    .line 328
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->retType:Ljavassist/bytecode/SignatureAttribute$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 330
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 331
    const-string v1, " throws "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$MethodSignature;->exceptions:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-static {v0, v1}, Ljavassist/bytecode/SignatureAttribute$Type;->toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$Type;)V

    .line 335
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
