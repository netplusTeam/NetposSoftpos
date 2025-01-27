.class public Ljavassist/bytecode/SignatureAttribute$TypeParameter;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeParameter"
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

.field superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 407
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;-><init>(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$ObjectType;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V

    .line 408
    return-void
.end method

.method constructor <init>(Ljava/lang/String;IILjavassist/bytecode/SignatureAttribute$ObjectType;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V
    .locals 1
    .param p1, "sig"    # Ljava/lang/String;
    .param p2, "nb"    # I
    .param p3, "ne"    # I
    .param p4, "sc"    # Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .param p5, "si"    # [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->name:Ljava/lang/String;

    .line 379
    iput-object p4, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 380
    iput-object p5, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 381
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavassist/bytecode/SignatureAttribute$ObjectType;[Ljavassist/bytecode/SignatureAttribute$ObjectType;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "superClass"    # Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .param p3, "superInterfaces"    # [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 391
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 392
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->name:Ljava/lang/String;

    .line 393
    iput-object p2, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 394
    if-nez p3, :cond_0

    .line 395
    const/4 v0, 0x0

    new-array v0, v0, [Ljavassist/bytecode/SignatureAttribute$ObjectType;

    iput-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    goto :goto_0

    .line 397
    :cond_0
    iput-object p3, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 398
    :goto_0
    return-void
.end method

.method static toString(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeParameter;)V
    .locals 2
    .param p0, "sbuf"    # Ljava/lang/StringBuffer;
    .param p1, "tp"    # [Ljavassist/bytecode/SignatureAttribute$TypeParameter;

    .line 454
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 455
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 456
    if-lez v0, :cond_0

    .line 457
    const-string v1, ", "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 455
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "i":I
    :cond_1
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 463
    return-void
.end method


# virtual methods
.method encode(Ljava/lang/StringBuffer;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;

    .line 466
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 467
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    const/16 v1, 0x3a

    if-nez v0, :cond_0

    .line 468
    const-string v0, ":Ljava/lang/Object;"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 471
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/SignatureAttribute$ObjectType;->encode(Ljava/lang/StringBuffer;)V

    .line 474
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 475
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    iget-object v2, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljavassist/bytecode/SignatureAttribute$ObjectType;->encode(Ljava/lang/StringBuffer;)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 478
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getClassBound()Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 420
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public getInterfaceBound()[Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 427
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 414
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 434
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 435
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    const-string v2, " extends "

    if-eqz v1, :cond_0

    .line 436
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 438
    :cond_0
    iget-object v1, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    array-length v1, v1

    .line 439
    .local v1, "len":I
    if-lez v1, :cond_3

    .line 440
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 441
    if-gtz v3, :cond_2

    iget-object v4, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superClass:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    if-eqz v4, :cond_1

    goto :goto_1

    .line 444
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 442
    :cond_2
    :goto_1
    const-string v4, " & "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 446
    :goto_2
    iget-object v4, p0, Ljavassist/bytecode/SignatureAttribute$TypeParameter;->superInterfaces:[Ljavassist/bytecode/SignatureAttribute$ObjectType;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 440
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 450
    .end local v3    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
