.class public Lcom/dspread/august/common/wbaes/XORCascade;
.super Ljava/lang/Object;
.source "XORCascade.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BOXES:I = 0x3

.field public static final C:I = 0x2

.field public static final L:I = 0x0

.field public static final R:I = 0x1

.field public static final WIDTH:I = 0x4

.field private static final serialVersionUID:J = 0x680545c4171a70e8L


# instance fields
.field protected x:[Lcom/dspread/august/common/wbaes/XORBox;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x3

    new-array v1, v0, [Lcom/dspread/august/common/wbaes/XORBox;

    iput-object v1, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    new-instance v3, Lcom/dspread/august/common/wbaes/XORBox;

    invoke-direct {v3}, Lcom/dspread/august/common/wbaes/XORBox;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([Lcom/dspread/august/common/wbaes/XORBox;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    .line 16
    invoke-virtual {p0, p1}, Lcom/dspread/august/common/wbaes/XORCascade;->setXor([Lcom/dspread/august/common/wbaes/XORBox;)V

    return-void
.end method

.method public static xor([Lcom/dspread/august/common/wbaes/XORBox;JJJJ)J
    .locals 2

    .line 2
    const/4 v0, 0x2

    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/dspread/august/common/wbaes/XORBox;->xor(JJ)J

    move-result-wide p1

    const/4 p3, 0x1

    aget-object p0, p0, p3

    invoke-virtual {p0, p5, p6, p7, p8}, Lcom/dspread/august/common/wbaes/XORBox;->xor(JJ)J

    move-result-wide p3

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/dspread/august/common/wbaes/XORBox;->xor(JJ)J

    move-result-wide p0

    return-wide p0
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
    check-cast p1, Lcom/dspread/august/common/wbaes/XORCascade;

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    iget-object p1, p1, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    invoke-static {v1, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getX()[Lcom/dspread/august/common/wbaes/XORBox;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x245

    return v0
.end method

.method public setXor(Lcom/dspread/august/common/wbaes/XORBox;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

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

.method public final setXor([Lcom/dspread/august/common/wbaes/XORBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    return-void
.end method

.method public xor(JJJJ)J
    .locals 10

    .line 1
    move-object v0, p0

    iget-object v1, v0, Lcom/dspread/august/common/wbaes/XORCascade;->x:[Lcom/dspread/august/common/wbaes/XORBox;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-wide/from16 v8, p7

    invoke-static/range {v1 .. v9}, Lcom/dspread/august/common/wbaes/XORCascade;->xor([Lcom/dspread/august/common/wbaes/XORBox;JJJJ)J

    move-result-wide v1

    return-wide v1
.end method
