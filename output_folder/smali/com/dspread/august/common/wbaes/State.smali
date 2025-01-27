.class public Lcom/dspread/august/common/wbaes/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/dspread/august/common/wbaes/Copyable;


# static fields
.field public static final BYTES:I = 0x10

.field public static final COLS:I = 0x4

.field public static final ROWS:I = 0x4

.field private static final serialVersionUID:J = -0x4396dfa8d4efb91dL


# instance fields
.field protected immutable:Z

.field protected state:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    .line 9
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/State;->init()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    .line 27
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    if-eqz p2, :cond_0

    const/16 p2, 0x10

    .line 56
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    goto :goto_0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    :goto_0
    return-void
.end method

.method public constructor <init>([BZZ)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    const/16 v1, 0x10

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 104
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    goto :goto_1

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/State;->init()V

    :goto_0
    if-ge v0, v1, :cond_2

    .line 111
    iget-object p2, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    invoke-static {v0}, Lcom/dspread/august/common/wbaes/State;->transpose(I)I

    move-result p3

    aget-byte p3, p1, p3

    aput-byte p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static copy(Lcom/dspread/august/common/wbaes/State;Lcom/dspread/august/common/wbaes/State;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/dspread/august/common/wbaes/State;->getState()[B

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/dspread/august/common/wbaes/State;->setState([BZ)V

    return-void
.end method

.method public static getCIdx(II)I
    .locals 0

    mul-int/lit8 p1, p1, 0x4

    add-int/2addr p1, p0

    return p1
.end method

.method public static getIdx(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr p0, p1

    return p0
.end method

.method public static getTIdx(I)I
    .locals 1

    .line 1
    div-int/lit8 v0, p0, 0x4

    rem-int/lit8 p0, p0, 0x4

    invoke-static {v0, p0}, Lcom/dspread/august/common/wbaes/State;->getCIdx(II)I

    move-result p0

    return p0
.end method

.method public static getTranspose(Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;
    .locals 4

    .line 1
    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/dspread/august/common/wbaes/State;->getT(I)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lcom/dspread/august/common/wbaes/State;

    invoke-direct {p0, v1}, Lcom/dspread/august/common/wbaes/State;-><init>([B)V

    return-object p0
.end method

.method public static initExt()[B
    .locals 1

    .line 1
    const/16 v0, 0x10

    new-array v0, v0, [B

    return-object v0
.end method

.method public static transpose(I)I
    .locals 1

    .line 1
    div-int/lit8 v0, p0, 0x4

    rem-int/lit8 p0, p0, 0x4

    mul-int/lit8 p0, p0, 0x4

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public copy()Lcom/dspread/august/common/wbaes/Copyable;
    .locals 3

    .line 2
    new-instance v0, Lcom/dspread/august/common/wbaes/State;

    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/State;->getState()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/august/common/wbaes/State;-><init>([BZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return v0

    .line 4
    :cond_1
    check-cast p1, Lcom/dspread/august/common/wbaes/State;

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    iget-object p1, p1, Lcom/dspread/august/common/wbaes/State;->state:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public get(I)B
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    aget-byte p1, v0, p1

    return p1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid byte requested"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(II)B
    .locals 0

    .line 3
    invoke-static {p1, p2}, Lcom/dspread/august/common/wbaes/State;->getIdx(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dspread/august/common/wbaes/State;->get(I)B

    move-result p1

    return p1
.end method

.method public getC(II)B
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/dspread/august/common/wbaes/State;->getCIdx(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dspread/august/common/wbaes/State;->get(I)B

    move-result p1

    return p1
.end method

.method public getState()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    return-object v0
.end method

.method public getStateCopy()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getT(I)B
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/dspread/august/common/wbaes/State;->getTIdx(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dspread/august/common/wbaes/State;->get(I)B

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0x19d

    return v0
.end method

.method public final init()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    if-nez v0, :cond_0

    const/16 v0, 0x10

    .line 5
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "State is set as immutable, cannot change"

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isImmutable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    return v0
.end method

.method public loadFrom(Lcom/dspread/august/common/wbaes/State;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/dspread/august/common/wbaes/State;->getState()[B

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string v0, "State is set as immutable, cannot change"

    invoke-direct {p1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(BI)V
    .locals 2

    if-ltz p2, :cond_2

    const/16 v0, 0x10

    if-ge p2, v0, :cond_2

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    if-eqz v0, :cond_1

    .line 5
    iget-boolean v1, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    if-nez v1, :cond_0

    .line 9
    aput-byte p1, v0, p2

    return-void

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "State is set as immutable, cannot change"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "State is not initialized"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid byte requested"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(BII)V
    .locals 0

    .line 13
    invoke-static {p2, p3}, Lcom/dspread/august/common/wbaes/State;->getIdx(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dspread/august/common/wbaes/State;->set(BI)V

    return-void
.end method

.method public setC(BII)V
    .locals 0

    .line 1
    invoke-static {p2, p3}, Lcom/dspread/august/common/wbaes/State;->getCIdx(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dspread/august/common/wbaes/State;->set(BI)V

    return-void
.end method

.method public setColumn(Lcom/dspread/august/common/wbaes/W32b;I)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/dspread/august/common/wbaes/W32b;->get()[B

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    add-int/lit8 v1, p2, 0x0

    const/4 v2, 0x0

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x4

    .line 3
    const/4 v2, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, p2, 0x8

    .line 4
    const/4 v2, 0x2

    aget-byte v2, p1, v2

    aput-byte v2, v0, v1

    add-int/lit8 p2, p2, 0xc

    .line 5
    const/4 v1, 0x3

    aget-byte p1, p1, v1

    aput-byte p1, v0, p2

    return-void
.end method

.method public setImmutable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    return-void
.end method

.method public setState([B)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dspread/august/common/wbaes/State;->setState([BZ)V

    return-void
.end method

.method public setState([BZ)V
    .locals 2

    .line 2
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    .line 6
    iget-boolean v0, p0, Lcom/dspread/august/common/wbaes/State;->immutable:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    .line 11
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    goto :goto_0

    .line 13
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    :goto_0
    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalAccessError;

    const-string p2, "State is set as immutable, cannot change"

    invoke-direct {p1, p2}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "XOR table has to have 8 sub-tables"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setT(BI)V
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/dspread/august/common/wbaes/State;->getTIdx(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/dspread/august/common/wbaes/State;->set(BI)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    if-nez v0, :cond_0

    .line 2
    const-string v0, "State{state=null}"

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_2

    .line 8
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    aget-byte v5, v5, v3

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "0x%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v1, :cond_1

    .line 10
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 14
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State{state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lcom/dspread/august/common/wbaes/State;
    .locals 4

    .line 2
    const/16 v0, 0x10

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-virtual {p0, v2}, Lcom/dspread/august/common/wbaes/State;->getT(I)B

    move-result v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_0
    iput-object v1, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    return-object p0
.end method

.method public zero()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/State;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method
