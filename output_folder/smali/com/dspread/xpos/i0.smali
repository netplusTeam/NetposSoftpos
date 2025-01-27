.class public Lcom/dspread/xpos/i0;
.super Ljava/lang/Object;
.source "Packet.java"


# static fields
.field private static c:[B = null

.field private static final d:I = 0x4

.field private static final e:I = 0x1

.field private static final f:I = 0x5

.field private static final g:I = 0x5

.field static final synthetic h:Z


# instance fields
.field private a:[B

.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dspread/xpos/i0;->h:Z

    .line 2
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/dspread/xpos/i0;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/i0;->a:[B

    .line 3
    iput v0, p0, Lcom/dspread/xpos/i0;->b:I

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 5

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/i0;->a:[B

    .line 25
    iput p1, p0, Lcom/dspread/xpos/i0;->b:I

    add-int/lit8 p1, p1, 0xa

    .line 28
    new-array v1, p1, [B

    iput-object v1, p0, Lcom/dspread/xpos/i0;->a:[B

    .line 29
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    add-int/lit8 p1, p1, -0x4

    .line 31
    invoke-static {p1}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object p1

    .line 33
    array-length v1, p1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    .line 34
    iget-object v1, p0, Lcom/dspread/xpos/i0;->a:[B

    aget-byte p1, p1, v0

    aput-byte p1, v1, v3

    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/i0;->a:[B

    aget-byte v4, p1, v0

    aput-byte v4, v1, v2

    .line 37
    aget-byte p1, p1, v2

    aput-byte p1, v1, v3

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/dspread/xpos/i0;->a:[B

    const/16 v1, 0x4d

    aput-byte v1, p1, v0

    return-void
.end method

.method protected constructor <init>([B)V
    .locals 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/i0;->a:[B

    .line 43
    iput v0, p0, Lcom/dspread/xpos/i0;->b:I

    .line 82
    array-length v1, p1

    add-int/lit8 v1, v1, -0x5

    add-int/lit8 v1, v1, 0x5

    iput v1, p0, Lcom/dspread/xpos/i0;->b:I

    .line 83
    array-length v1, p1

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/dspread/xpos/i0;->a:[B

    .line 84
    invoke-static {p1, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private a([B[B[B)V
    .locals 2

    .line 17
    invoke-static {p1, p2, p3}, Lcom/dspread/xpos/i0;->b([B[B[B)[B

    move-result-object p1

    .line 18
    iget-object p2, p0, Lcom/dspread/xpos/i0;->a:[B

    array-length p3, p2

    add-int/lit8 p3, p3, -0x9

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 4

    .line 48
    const-string p0, "010102020303040405"

    invoke-static {p0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 49
    const-string v0, "68F17FF9C87F96BB8CFF2A364BF037C7"

    invoke-static {v0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 50
    const-string v1, "0A46000302120110000229"

    invoke-static {v1}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 51
    new-instance v2, Lcom/dspread/xpos/i0;

    array-length v3, p0

    add-int/lit8 v3, v3, 0x8

    invoke-direct {v2, v3}, Lcom/dspread/xpos/i0;-><init>(I)V

    .line 53
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/i0;->c(B)V

    .line 54
    const/16 v3, -0x78

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/i0;->b(B)V

    .line 55
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/i0;->d(B)V

    .line 56
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/i0;->e(B)V

    .line 57
    invoke-virtual {v2, p0}, Lcom/dspread/xpos/i0;->a([B)V

    .line 58
    invoke-direct {v2, p0, v0, v1}, Lcom/dspread/xpos/i0;->a([B[B[B)V

    .line 59
    invoke-virtual {v2}, Lcom/dspread/xpos/i0;->a()V

    .line 60
    invoke-virtual {v2}, Lcom/dspread/xpos/i0;->l()Z

    move-result p0

    .line 61
    sget-boolean v0, Lcom/dspread/xpos/i0;->h:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 62
    :cond_1
    :goto_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v0, v1, [B

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/dspread/xpos/i0;->a(I)B

    move-result v2

    aput-byte v2, v0, v1

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected static a([BI)[B
    .locals 5

    add-int/lit8 v0, p1, 0x1

    .line 24
    rem-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    rsub-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    .line 27
    new-array v1, v0, [B

    .line 28
    const/4 v3, 0x0

    invoke-static {p0, v3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge p1, v0, :cond_0

    .line 31
    aput-byte v3, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 35
    new-array p0, v2, [B

    fill-array-data p0, :array_0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 39
    rem-int/lit8 p1, v3, 0x8

    aget-byte v2, p0, p1

    aget-byte v4, v1, v3

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p0, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 45
    :cond_1
    sget-object p1, Lcom/dspread/xpos/i0;->c:[B

    invoke-static {p1, p0}, Lcom/dspread/xpos/r;->f([B[B)[B

    move-result-object p0

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mac packet:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/Tip;->d(Ljava/lang/String;)V

    return-object p0

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private b()B
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    move v2, v1

    .line 39
    :goto_0
    iget-object v3, p0, Lcom/dspread/xpos/i0;->a:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    if-ge v2, v4, :cond_0

    .line 40
    aget-byte v3, v3, v2

    xor-int/2addr v0, v3

    int-to-byte v0, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method protected static b([B)V
    .locals 7

    .line 41
    const-string v0, "TCK"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    .line 43
    array-length v0, p0

    const-string v1, "TCK: "

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    .line 45
    sget-object v0, Lcom/dspread/xpos/i0;->c:[B

    invoke-static {p0, v2, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/dspread/xpos/i0;->c:[B

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_0
    array-length v0, p0

    const/16 v4, 0x10

    if-ne v0, v4, :cond_2

    .line 48
    new-array v0, v3, [B

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    .line 50
    aget-byte v5, p0, v4

    add-int/lit8 v6, v4, 0x8

    aget-byte v6, p0, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    :cond_1
    sget-object p0, Lcom/dspread/xpos/i0;->c:[B

    invoke-static {v0, v2, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object v0, Lcom/dspread/xpos/i0;->c:[B

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    goto :goto_1

    .line 56
    :cond_2
    const-string p0, "TCK length error "

    invoke-static {p0}, Lcom/dspread/xpos/Tip;->i(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static b([B[B[B)[B
    .locals 7

    .line 2
    const/4 v0, -0x1

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lcom/dspread/xpos/Util;->a([BBI)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dspread/xpos/Util;->xor16Byte([B[B)[B

    move-result-object v0

    .line 3
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-static {p2, v1, v2}, Lcom/dspread/xpos/Util;->subByte([BII)[B

    move-result-object p2

    const/4 v2, 0x5

    invoke-static {p1, v1, v2}, Lcom/dspread/xpos/Util;->subByte([BII)[B

    move-result-object v2

    invoke-static {p2, v2}, Lcom/dspread/xpos/Util;->byteMerger([B[B)[B

    move-result-object p2

    .line 4
    invoke-static {v0, p2}, Lcom/dspread/xpos/Util;->xor16Byte([B[B)[B

    move-result-object p2

    .line 7
    array-length v0, p0

    const/16 v2, 0x8

    rem-int/2addr v0, v2

    if-eqz v0, :cond_0

    .line 8
    array-length v0, p0

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    .line 9
    array-length v0, p0

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v2

    invoke-static {p0, v1, v0}, Lcom/dspread/xpos/Util;->a([BBI)[B

    move-result-object p0

    goto :goto_0

    .line 11
    :cond_0
    array-length v0, p0

    new-array v0, v0, [B

    .line 12
    array-length v3, p0

    invoke-static {p0, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    .line 14
    :goto_0
    array-length v0, p0

    div-int/2addr v0, v2

    .line 17
    new-array v0, v2, [B

    .line 19
    new-array v3, v2, [B

    .line 20
    invoke-static {p1, v1, v2}, Lcom/dspread/xpos/Util;->subByte([BII)[B

    move-result-object p1

    .line 21
    invoke-static {p0, v1, v2}, Lcom/dspread/xpos/Util;->subByte([BII)[B

    move-result-object v4

    move v5, v1

    .line 23
    :cond_1
    :goto_1
    :try_start_0
    array-length v6, p0

    div-int/2addr v6, v2

    if-ge v5, v6, :cond_2

    .line 25
    invoke-static {p2, v4}, Lcom/dspread/xpos/r;->h([B[B)[B

    move-result-object v0

    .line 26
    invoke-static {v0, p1}, Lcom/dspread/xpos/Util;->xor8([B[B)[B

    move-result-object v0

    add-int/lit8 v5, v5, 0x1

    .line 27
    array-length v6, p0

    div-int/2addr v6, v2

    if-ge v5, v6, :cond_1

    mul-int/lit8 v4, v5, 0x8

    .line 28
    invoke-static {p0, v4, v2}, Lcom/dspread/xpos/Util;->subByte([BII)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/dspread/xpos/Util;->xor8([B[B)[B

    move-result-object v4

    goto :goto_1

    :cond_2
    nop

    .line 31
    const/4 p0, 0x4

    invoke-static {v0, p0, p0}, Lcom/dspread/xpos/Util;->subByte([BII)[B

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/dspread/xpos/Util;->a([BBI)[B

    move-result-object p0

    .line 33
    invoke-static {p2, p0}, Lcom/dspread/xpos/r;->g([B[B)[B

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    :goto_2
    return-object v3
.end method


# virtual methods
.method protected a(I)B
    .locals 2

    add-int/lit8 p1, p1, 0x4

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 3
    aget-byte p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected a()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/dspread/xpos/i0;->b()B

    move-result v0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/i0;->a(B)V

    return-void
.end method

.method protected a(B)V
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-byte p1, v0, v1

    return-void
.end method

.method protected a(IB)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    add-int/lit8 p1, p1, 0x4

    aput-byte p2, v0, p1

    return-void
.end method

.method protected a([B)V
    .locals 6

    .line 4
    array-length v0, p1

    .line 5
    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/dspread/xpos/i0;->a(IB)V

    .line 7
    invoke-static {v0}, Lcom/dspread/xpos/Util;->IntToHex(I)[B

    move-result-object v0

    .line 9
    array-length v3, v0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 10
    aget-byte v0, v0, v2

    invoke-virtual {p0, v4, v0}, Lcom/dspread/xpos/i0;->a(IB)V

    goto :goto_0

    :cond_0
    nop

    .line 12
    aget-byte v3, v0, v2

    invoke-virtual {p0, v1, v3}, Lcom/dspread/xpos/i0;->a(IB)V

    .line 13
    aget-byte v0, v0, v5

    invoke-virtual {p0, v4, v0}, Lcom/dspread/xpos/i0;->a(IB)V

    .line 16
    :goto_0
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    array-length v1, p1

    const/16 v3, 0x9

    invoke-static {p1, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method a([BI[BI)V
    .locals 0

    return-void
.end method

.method public a([BII)[B
    .locals 3

    .line 19
    new-array v0, p3, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    .line 21
    invoke-virtual {p0, p1, v2}, Lcom/dspread/xpos/i0;->b([BI)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected b(I)B
    .locals 2

    add-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x5

    .line 36
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 37
    aget-byte p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b([BI)B
    .locals 1

    .line 34
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 35
    aget-byte p1, p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected b(B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/dspread/xpos/i0;->a(IB)V

    return-void
.end method

.method protected c(B)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    return-void
.end method

.method protected c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    return-object v0
.end method

.method protected d()B
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-byte v0, v0, v1

    return v0
.end method

.method protected d(B)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/dspread/xpos/i0;->a(IB)V

    return-void
.end method

.method protected e()B
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/i0;->a(I)B

    move-result v0

    return v0
.end method

.method protected e(B)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/dspread/xpos/i0;->a(IB)V

    return-void
.end method

.method protected f()B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method protected g()B
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/i0;->a(I)B

    move-result v0

    return v0
.end method

.method protected h()B
    .locals 1

    .line 1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/i0;->a(I)B

    move-result v0

    return v0
.end method

.method protected i()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/i0;->b:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/i0;->a:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x4d

    if-eq v0, v2, :cond_0

    .line 2
    const-string/jumbo v0, "packet is not valid cause not 0x4D"

    invoke-static {v0}, Lcom/dspread/xpos/Tip;->w(Ljava/lang/String;)V

    return v1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/i0;->l()Z

    move-result v0

    return v0
.end method

.method protected k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/i0;->b:I

    return v0
.end method

.method protected l()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/i0;->b()B

    move-result v0

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/i0;->d()B

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
