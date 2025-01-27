.class public Lcom/dspread/august/common/wbaes/TBox8to128;
.super Ljava/lang/Object;
.source "TBox8to128.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final IWIDTH:I = 0x1

.field public static final OWIDTH:I = 0x10

.field public static final ROWS:I = 0x100

.field private static final serialVersionUID:J = 0x6169850aef08da94L


# instance fields
.field protected tbl:[Lcom/dspread/august/common/wbaes/State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    .line 5
    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/TBox8to128;->init()V

    return-void
.end method

.method public static initNew()[Lcom/dspread/august/common/wbaes/State;
    .locals 1

    .line 1
    const/16 v0, 0x100

    new-array v0, v0, [Lcom/dspread/august/common/wbaes/State;

    return-object v0
.end method

.method public static lookup([Lcom/dspread/august/common/wbaes/State;B)Lcom/dspread/august/common/wbaes/State;
    .locals 0

    .line 3
    aget-object p0, p0, p1

    return-object p0
.end method

.method public static lookup([Lcom/dspread/august/common/wbaes/State;Lcom/dspread/august/common/wbaes/State;B)V
    .locals 0

    .line 4
    aget-object p0, p0, p2

    invoke-virtual {p0}, Lcom/dspread/august/common/wbaes/State;->getState()[B

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, p0, p2}, Lcom/dspread/august/common/wbaes/State;->setState([BZ)V

    return-void
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
    check-cast p1, Lcom/dspread/august/common/wbaes/TBox8to128;

    .line 5
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    iget-object p1, p1, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    invoke-static {v1, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public getTbl()[Lcom/dspread/august/common/wbaes/State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    invoke-static {v0}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x1ff

    return v0
.end method

.method public final init()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/dspread/august/common/wbaes/TBox8to128;->initNew()[Lcom/dspread/august/common/wbaes/State;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    new-instance v2, Lcom/dspread/august/common/wbaes/State;

    invoke-direct {v2}, Lcom/dspread/august/common/wbaes/State;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public lookup(B)Lcom/dspread/august/common/wbaes/State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    invoke-static {p1}, Lcom/dspread/august/common/wbaes/AES;->posIdx(B)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public lookup(Lcom/dspread/august/common/wbaes/State;B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Lcom/dspread/august/common/wbaes/State;->getState()[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/dspread/august/common/wbaes/State;->setState([BZ)V

    return-void
.end method

.method public final setTbl([Lcom/dspread/august/common/wbaes/State;Z)V
    .locals 3

    .line 1
    array-length v0, p1

    const/16 v1, 0x100

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_0

    .line 6
    invoke-static {}, Lcom/dspread/august/common/wbaes/TBox8to128;->initNew()[Lcom/dspread/august/common/wbaes/State;

    move-result-object p2

    iput-object p2, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    aget-object v2, p1, p2

    invoke-virtual {v2}, Lcom/dspread/august/common/wbaes/State;->copy()Lcom/dspread/august/common/wbaes/Copyable;

    move-result-object v2

    check-cast v2, Lcom/dspread/august/common/wbaes/State;

    aput-object v2, v0, p2

    .line 9
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    aget-object v0, v0, p2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/dspread/august/common/wbaes/State;->setImmutable(Z)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    :cond_1
    return-void

    .line 13
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Table has to have exactly 256 rows"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(Lcom/dspread/august/common/wbaes/State;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    aget-object p2, v0, p2

    invoke-virtual {p2, p1}, Lcom/dspread/august/common/wbaes/State;->loadFrom(Lcom/dspread/august/common/wbaes/State;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TBox8to128{tbl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/august/common/wbaes/TBox8to128;->tbl:[Lcom/dspread/august/common/wbaes/State;

    if-eqz v1, :cond_0

    array-length v1, v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
