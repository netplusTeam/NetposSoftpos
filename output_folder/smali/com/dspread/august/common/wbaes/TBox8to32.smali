.class public Lcom/dspread/august/common/wbaes/TBox8to32;
.super Ljava/lang/Object;
.source "TBox8to32.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcom/dspread/august/common/wbaes/Copyable;


# static fields
.field public static final IWIDTH:I = 0x1

.field public static final OWIDTH:I = 0x4

.field public static final ROWS:I = 0x100

.field private static final serialVersionUID:J = 0x23d759f5dd9c24fdL


# instance fields
.field protected tbl:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    .line 8
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/TBox8to32;->init()V

    return-void
.end method

.method public constructor <init>([JZ)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/dspread/august/common/wbaes/TBox8to32;->setTbl([JZ)V

    return-void
.end method

.method public static copy(Lcom/dspread/august/common/wbaes/TBox8to32;Lcom/dspread/august/common/wbaes/TBox8to32;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/TBox8to32;->getTbl()[J

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Lcom/dspread/august/common/wbaes/TBox8to32;->setTbl([JZ)V

    return-void
.end method

.method public static initNew()[J
    .locals 1

    .line 1
    const/16 v0, 0x100

    new-array v0, v0, [J

    return-object v0
.end method

.method public static lookup([JB)J
    .locals 0

    .line 2
    aget-wide p0, p0, p1

    return-wide p0
.end method


# virtual methods
.method public copy()Lcom/dspread/august/common/wbaes/Copyable;
    .locals 3

    .line 2
    new-instance v0, Lcom/dspread/august/common/wbaes/TBox8to32;

    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/TBox8to32;->getTbl()[J

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dspread/august/common/wbaes/TBox8to32;-><init>([JZ)V

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
    check-cast p1, Lcom/dspread/august/common/wbaes/TBox8to32;

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    iget-object p1, p1, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getTbl()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    add-int/lit16 v0, v0, 0x123

    return v0
.end method

.method public final init()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dspread/august/common/wbaes/TBox8to32;->initNew()[J

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    return-void
.end method

.method public lookup(B)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    invoke-static {p1}, Lcom/dspread/august/common/wbaes/AES;->posIdx(B)I

    move-result p1

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final setTbl([JZ)V
    .locals 2

    .line 1
    array-length v0, p1

    const/16 v1, 0x100

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    .line 6
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    :goto_0
    return-void

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Table has to have exactly 256 rows"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to32;->tbl:[J

    aput-wide p1, v0, p3

    return-void
.end method
