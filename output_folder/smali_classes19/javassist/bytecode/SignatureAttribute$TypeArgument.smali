.class public Ljavassist/bytecode/SignatureAttribute$TypeArgument;
.super Ljava/lang/Object;
.source "SignatureAttribute.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavassist/bytecode/SignatureAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypeArgument"
.end annotation


# instance fields
.field arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

.field wildcard:C


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 510
    const/4 v0, 0x0

    const/16 v1, 0x2a

    invoke-direct {p0, v0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    .line 511
    return-void
.end method

.method public constructor <init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;)V
    .locals 1
    .param p1, "t"    # Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 503
    const/16 v0, 0x20

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    .line 504
    return-void
.end method

.method constructor <init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V
    .locals 0
    .param p1, "a"    # Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .param p2, "w"    # C

    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    iput-object p1, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 492
    iput-char p2, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    .line 493
    return-void
.end method

.method static encode(Ljava/lang/StringBuffer;[Ljavassist/bytecode/SignatureAttribute$TypeArgument;)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "args"    # [Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    .line 574
    const/16 v0, 0x3c

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 575
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 576
    aget-object v1, p1, v0

    .line 577
    .local v1, "ta":Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->isWildcard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 578
    iget-char v2, v1, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 580
    :cond_0
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->getType()Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 581
    invoke-virtual {v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->getType()Ljavassist/bytecode/SignatureAttribute$ObjectType;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljavassist/bytecode/SignatureAttribute$ObjectType;->encode(Ljava/lang/StringBuffer;)V

    .line 575
    .end local v1    # "ta":Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 584
    .end local v0    # "i":I
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 585
    return-void
.end method

.method public static subclassOf(Ljavassist/bytecode/SignatureAttribute$ObjectType;)Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .locals 2
    .param p0, "t"    # Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 520
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/16 v1, 0x2b

    invoke-direct {v0, p0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    return-object v0
.end method

.method public static superOf(Ljavassist/bytecode/SignatureAttribute$ObjectType;)Ljavassist/bytecode/SignatureAttribute$TypeArgument;
    .locals 2
    .param p0, "t"    # Ljavassist/bytecode/SignatureAttribute$ObjectType;

    .line 530
    new-instance v0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;

    const/16 v1, 0x2d

    invoke-direct {v0, p0, v1}, Ljavassist/bytecode/SignatureAttribute$TypeArgument;-><init>(Ljavassist/bytecode/SignatureAttribute$ObjectType;C)V

    return-object v0
.end method


# virtual methods
.method public getKind()C
    .locals 1

    .line 539
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    return v0
.end method

.method public getType()Ljavassist/bytecode/SignatureAttribute$ObjectType;
    .locals 1

    .line 554
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    return-object v0
.end method

.method public isWildcard()Z
    .locals 2

    .line 545
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 561
    iget-char v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    .line 562
    const-string v0, "?"

    return-object v0

    .line 564
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->arg:Ljavassist/bytecode/SignatureAttribute$ObjectType;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "type":Ljava/lang/String;
    iget-char v1, p0, Ljavassist/bytecode/SignatureAttribute$TypeArgument;->wildcard:C

    const/16 v2, 0x20

    if-ne v1, v2, :cond_1

    .line 566
    return-object v0

    .line 567
    :cond_1
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "? extends "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 570
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "? super "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
