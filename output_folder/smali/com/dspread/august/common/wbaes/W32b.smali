.class public Lcom/dspread/august/common/wbaes/W32b;
.super Ljava/lang/Object;
.source "W32b.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/dspread/august/common/wbaes/Copyable;


# static fields
.field public static final WIDTH:I = 0x4

.field private static final serialVersionUID:J = -0x312dfeccd5dee094L


# instance fields
.field protected b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    .line 5
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/W32b;->init()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    .line 34
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/W32b;->init()V

    .line 35
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    invoke-static {v0, p1, p2}, Lcom/dspread/august/common/wbaes/Utils;->long2byte([BJ)V

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x4

    .line 15
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    goto :goto_0

    .line 17
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    :goto_0
    return-void
.end method

.method public static W32b2byte(Lcom/dspread/august/common/wbaes/W32b;)[B
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/W32b;->get()[B

    move-result-object p0

    return-object p0
.end method

.method public static W32b2long(Lcom/dspread/august/common/wbaes/W32b;)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/W32b;->get()[B

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/august/common/wbaes/Utils;->byte2long([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public static byte2W32b([BLcom/dspread/august/common/wbaes/W32b;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/dspread/august/common/wbaes/W32b;->set([B)V

    return-void
.end method

.method public static initNew()[B
    .locals 1

    .line 1
    const/4 v0, 0x4

    new-array v0, v0, [B

    return-object v0
.end method

.method public static long2W32b(JLcom/dspread/august/common/wbaes/W32b;)V
    .locals 0

    .line 1
    invoke-virtual {p2, p0, p1}, Lcom/dspread/august/common/wbaes/W32b;->set(J)V

    return-void
.end method


# virtual methods
.method public copy()Lcom/dspread/august/common/wbaes/Copyable;
    .locals 3

    .line 1
    new-instance v0, Lcom/dspread/august/common/wbaes/W32b;

    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/W32b;->get()[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/august/common/wbaes/W32b;-><init>([BZ)V

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
    check-cast p1, Lcom/dspread/august/common/wbaes/W32b;

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    iget-object p1, p1, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public get()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    return-object v0
.end method

.method public getCopy()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getLong()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/W32b;->get()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/august/common/wbaes/Utils;->byte2long([B)J

    move-result-wide v0

    return-wide v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    add-int/lit16 v0, v0, 0xcd

    return v0
.end method

.method public final init()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dspread/august/common/wbaes/W32b;->initNew()[B

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    return-void
.end method

.method public loadFrom(Lcom/dspread/august/common/wbaes/W32b;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/dspread/august/common/wbaes/W32b;->get()[B

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public set(J)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    invoke-static {v0, p1, p2}, Lcom/dspread/august/common/wbaes/Utils;->long2byte([BJ)V

    return-void
.end method

.method public set([B)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dspread/august/common/wbaes/W32b;->set([BZ)V

    return-void
.end method

.method public set([BZ)V
    .locals 2

    .line 3
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 8
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    :goto_0
    return-void

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width has to be 4"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    if-nez v0, :cond_0

    .line 2
    const-string v0, "W32b{b=null}"

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    array-length v1, v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_0
    if-ge v3, v1, :cond_2

    .line 8
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

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

    const-string v2, "W32b{b="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";mem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/august/common/wbaes/W32b;->b:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
