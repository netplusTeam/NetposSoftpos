.class public Lcom/dspread/xpos/f0;
.super Ljava/lang/Object;
.source "MyTlvTools.java"


# static fields
.field static final b:Ljava/lang/String; = "0123456789ABCDEF"

.field private static c:[C


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dspread/xpos/e0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dspread/xpos/f0;->c:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/f0;->a:Ljava/util/List;

    return-void
.end method

.method public static a(C)B
    .locals 1

    .line 19
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static a(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static a([B)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    .line 3
    const-string v5, "0123456789ABCDEF"

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    and-int/lit8 v3, v3, 0xf

    .line 4
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([B)Ljava/lang/String;
    .locals 6

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0xf

    and-int/lit8 v3, v3, 0xf

    .line 93
    sget-object v5, Lcom/dspread/xpos/f0;->c:[C

    aget-char v4, v5, v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    sget-object v4, Lcom/dspread/xpos/f0;->c:[C

    aget-char v3, v4, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a([BI)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    add-int v2, v1, p2

    .line 18
    aget-byte v2, p1, v2

    const/16 v3, 0xf

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public a([BII)I
    .locals 3

    .line 20
    const/4 v0, 0x4

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p3, :cond_0

    shl-int/lit8 v1, v1, 0x8

    add-int v2, p2, v0

    .line 23
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public a(Ljava/lang/String;)[B
    .locals 5

    if-eqz p1, :cond_2

    .line 7
    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 11
    new-array v1, v0, [B

    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    mul-int/lit8 v3, v2, 0x2

    .line 17
    aget-char v4, p1, v3

    invoke-static {v4}, Lcom/dspread/xpos/f0;->a(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p1, v3

    invoke-static {v3}, Lcom/dspread/xpos/f0;->a(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/dspread/xpos/e0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/f0;->a(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 3
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_9

    .line 4
    new-instance v3, Lcom/dspread/xpos/e0;

    invoke-direct {v3}, Lcom/dspread/xpos/e0;-><init>()V

    .line 7
    invoke-virtual {p0, p1, v1}, Lcom/dspread/xpos/f0;->a([BI)I

    move-result v4

    .line 10
    invoke-virtual {p0, p1, v1, v4}, Lcom/dspread/xpos/f0;->a([BII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/dspread/xpos/e0;->a(Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1, v1, v4}, Lcom/dspread/xpos/f0;->a([BII)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "C2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "81"

    const-string v7, "82"

    const/4 v8, 0x2

    if-eqz v5, :cond_0

    add-int v5, v1, v4

    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/dspread/xpos/f0;->a(B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    add-int v5, v1, v4

    aget-byte v9, p1, v5

    .line 13
    invoke-static {v9}, Lcom/dspread/xpos/f0;->a(B)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_1
    add-int/2addr v1, v4

    .line 15
    aget-byte v5, p1, v1

    invoke-static {v5}, Lcom/dspread/xpos/f0;->a(B)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v1, v4

    .line 17
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 18
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    new-array v2, v8, [B

    move v4, v0

    :goto_1
    if-ge v4, v8, :cond_3

    add-int v5, v1, v4

    .line 23
    aget-byte v5, p1, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 25
    :cond_3
    invoke-static {v2}, Lcom/dspread/xpos/f0;->a([B)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    .line 26
    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    add-int/lit8 v1, v1, 0x2

    .line 30
    :cond_4
    :goto_2
    invoke-virtual {v3, v2}, Lcom/dspread/xpos/e0;->a(I)V

    .line 33
    new-array v4, v2, [B

    .line 34
    invoke-static {p1, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    invoke-virtual {v3, v4}, Lcom/dspread/xpos/e0;->a([B)V

    add-int/2addr v1, v2

    .line 39
    iget-object v4, p0, Lcom/dspread/xpos/f0;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 50
    :cond_5
    aget-byte v1, p1, v5

    and-int/lit16 v4, v1, 0x80

    const/16 v6, 0x80

    if-ne v4, v6, :cond_8

    and-int/lit8 v1, v1, 0x7f

    const/4 v4, 0x1

    if-eq v1, v4, :cond_7

    if-eq v1, v8, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v2, v5, 0x1

    .line 59
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v4, v5, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const v6, 0xff00

    add-int/2addr v4, v6

    and-int/2addr v2, v4

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v5, 0x1

    .line 60
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v5, v1

    goto :goto_4

    :cond_8
    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v5, v5, 0x1

    move v2, v1

    .line 74
    :goto_4
    invoke-virtual {v3, v2}, Lcom/dspread/xpos/e0;->a(I)V

    .line 77
    new-array v1, v2, [B

    .line 78
    invoke-static {p1, v5, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    invoke-virtual {v3, v1}, Lcom/dspread/xpos/e0;->a([B)V

    add-int v1, v5, v2

    .line 83
    iget-object v4, p0, Lcom/dspread/xpos/f0;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 86
    :cond_9
    iget-object p1, p0, Lcom/dspread/xpos/f0;->a:Ljava/util/List;

    return-object p1
.end method
