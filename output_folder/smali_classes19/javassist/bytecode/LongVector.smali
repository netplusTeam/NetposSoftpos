.class final Ljavassist/bytecode/LongVector;
.super Ljava/lang/Object;
.source "LongVector.java"


# static fields
.field static final ABITS:I = 0x7

.field static final ASIZE:I = 0x80

.field static final VSIZE:I = 0x8


# instance fields
.field private elements:I

.field private objects:[[Ljavassist/bytecode/ConstInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x8

    new-array v0, v0, [[Ljavassist/bytecode/ConstInfo;

    iput-object v0, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Ljavassist/bytecode/LongVector;->elements:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialSize"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    shr-int/lit8 v0, p1, 0x7

    and-int/lit8 v0, v0, -0x8

    add-int/lit8 v0, v0, 0x8

    .line 33
    .local v0, "vsize":I
    new-array v1, v0, [[Ljavassist/bytecode/ConstInfo;

    iput-object v1, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Ljavassist/bytecode/LongVector;->elements:I

    .line 35
    return-void
.end method


# virtual methods
.method public addElement(Ljavassist/bytecode/ConstInfo;)V
    .locals 6
    .param p1, "value"    # Ljavassist/bytecode/ConstInfo;

    .line 49
    iget v0, p0, Ljavassist/bytecode/LongVector;->elements:I

    shr-int/lit8 v1, v0, 0x7

    .line 50
    .local v1, "nth":I
    and-int/lit8 v0, v0, 0x7f

    .line 51
    .local v0, "offset":I
    iget-object v2, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    array-length v3, v2

    .line 52
    .local v3, "len":I
    if-lt v1, v3, :cond_0

    .line 53
    add-int/lit8 v4, v3, 0x8

    new-array v4, v4, [[Ljavassist/bytecode/ConstInfo;

    .line 54
    .local v4, "newObj":[[Ljavassist/bytecode/ConstInfo;
    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput-object v4, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    .line 58
    .end local v4    # "newObj":[[Ljavassist/bytecode/ConstInfo;
    :cond_0
    iget-object v2, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    aget-object v4, v2, v1

    if-nez v4, :cond_1

    .line 59
    const/16 v4, 0x80

    new-array v4, v4, [Ljavassist/bytecode/ConstInfo;

    aput-object v4, v2, v1

    .line 61
    :cond_1
    aget-object v2, v2, v1

    aput-object p1, v2, v0

    .line 62
    iget v2, p0, Ljavassist/bytecode/LongVector;->elements:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljavassist/bytecode/LongVector;->elements:I

    .line 63
    return-void
.end method

.method public capacity()I
    .locals 1

    .line 39
    iget-object v0, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    array-length v0, v0

    mul-int/lit16 v0, v0, 0x80

    return v0
.end method

.method public elementAt(I)Ljavassist/bytecode/ConstInfo;
    .locals 2
    .param p1, "i"    # I

    .line 42
    if-ltz p1, :cond_1

    iget v0, p0, Ljavassist/bytecode/LongVector;->elements:I

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/LongVector;->objects:[[Ljavassist/bytecode/ConstInfo;

    shr-int/lit8 v1, p1, 0x7

    aget-object v0, v0, v1

    and-int/lit8 v1, p1, 0x7f

    aget-object v0, v0, v1

    return-object v0

    .line 43
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 37
    iget v0, p0, Ljavassist/bytecode/LongVector;->elements:I

    return v0
.end method
