.class public Lcom/dspread/august/common/wbaes/XORCascadeState;
.super Ljava/lang/Object;
.source "XORCascadeState.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOXES:I = 0xf

.field public static final STAGES:I

.field public static final WIDTH:I = 0x10

.field private static final serialVersionUID:J = -0x20ea62999749cbfdL


# instance fields
.field protected x:[Lcom/dspread/august/common/wbaes/XORBoxState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/dspread/august/common/wbaes/Utils;->binlog(I)I

    move-result v0

    sput v0, Lcom/dspread/august/common/wbaes/XORCascadeState;->STAGES:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0xf

    new-array v1, v0, [Lcom/dspread/august/common/wbaes/XORBoxState;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    new-instance v3, Lcom/dspread/august/common/wbaes/XORBoxState;

    invoke-direct {v3}, Lcom/dspread/august/common/wbaes/XORBoxState;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lcom/dspread/august/common/wbaes/XORBoxState;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    .line 16
    invoke-virtual {p0, p1}, Lcom/dspread/august/common/wbaes/XORCascadeState;->setXor([Lcom/dspread/august/common/wbaes/XORBoxState;)V

    return-void
.end method

.method public static xor([Lcom/dspread/august/common/wbaes/XORBoxState;[Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    const/4 v3, 0x4

    if-ge v1, v3, :cond_1

    rsub-int/lit8 v3, v1, 0x3

    const/4 v4, 0x1

    shl-int v3, v4, v3

    shl-int/2addr v4, v1

    move v5, v0

    :goto_1
    if-ge v5, v3, :cond_0

    add-int v6, v2, v5

    .line 2
    aget-object v6, p0, v6

    mul-int/lit8 v7, v5, 0x2

    mul-int/2addr v7, v4

    aget-object v8, p1, v7

    add-int/2addr v7, v4

    aget-object v7, p1, v7

    invoke-virtual {v6, v8, v7}, Lcom/dspread/august/common/wbaes/XORBoxState;->xorA(Lcom/dspread/august/common/wbaes/State;Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 8
    aget-object p0, p1, v0

    return-object p0
.end method


# virtual methods
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
    check-cast p1, Lcom/dspread/august/common/wbaes/XORCascadeState;

    .line 5
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    iget-object p1, p1, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    invoke-static {v0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getX()[Lcom/dspread/august/common/wbaes/XORBoxState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0xc9

    return v0
.end method

.method public setXor(Lcom/dspread/august/common/wbaes/XORBoxState;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    if-eqz v0, :cond_0

    .line 6
    aput-object p1, v0, p2

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "XOR boxes are not initialized, initialize first."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setXor([Lcom/dspread/august/common/wbaes/XORBoxState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    return-void
.end method

.method public xor([Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascadeState;->x:[Lcom/dspread/august/common/wbaes/XORBoxState;

    invoke-static {v0, p1}, Lcom/dspread/august/common/wbaes/XORCascadeState;->xor([Lcom/dspread/august/common/wbaes/XORBoxState;[Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    move-result-object p1

    return-object p1
.end method

.method public xorSafe([Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lcom/dspread/august/common/wbaes/XORCascadeState;->xor([Lcom/dspread/august/common/wbaes/State;)Lcom/dspread/august/common/wbaes/State;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There has to be exactly 16 elements, currently="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Input state is null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
