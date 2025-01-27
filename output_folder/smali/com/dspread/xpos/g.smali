.class public Lcom/dspread/xpos/g;
.super Ljava/lang/Object;
.source "CardServer.java"


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/dspread/xpos/m;

.field c:Ljava/io/OutputStream;

.field d:Landroid/text/format/Time;

.field e:I

.field f:I

.field g:I

.field h:I

.field private final i:I

.field private final j:I

.field k:I


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/m;Ljava/io/OutputStream;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "cardserver"

    iput-object v0, p0, Lcom/dspread/xpos/g;->a:Ljava/lang/String;

    .line 5
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    .line 8
    const/16 v0, 0x10

    iput v0, p0, Lcom/dspread/xpos/g;->g:I

    .line 9
    iput v0, p0, Lcom/dspread/xpos/g;->h:I

    .line 10
    const/4 v0, 0x5

    iput v0, p0, Lcom/dspread/xpos/g;->i:I

    .line 11
    const/4 v0, 0x2

    iput v0, p0, Lcom/dspread/xpos/g;->j:I

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/g;->k:I

    .line 169
    iput-object p2, p0, Lcom/dspread/xpos/g;->c:Ljava/io/OutputStream;

    .line 170
    iput-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    return-void
.end method

.method private declared-synchronized a(I)[I
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 64
    :try_start_0
    new-array v0, v0, [I

    .line 66
    invoke-virtual {p0}, Lcom/dspread/xpos/g;->j()V

    .line 69
    :goto_0
    iget-object v1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    const/16 v2, 0x52

    invoke-virtual {v1, p1, v2}, Lcom/dspread/xpos/m;->c(II)I

    move-result v1

    if-lez v1, :cond_1

    .line 71
    iget-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {p1}, Lcom/dspread/xpos/m;->c()[I

    move-result-object p1

    .line 72
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 73
    const-string v0, "cardserver"

    const-string v1, "msr proc err "

    invoke-static {v0, v1}, Lcom/dspread/xpos/a1;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object p1

    :cond_1
    const/16 v1, 0xf

    .line 77
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/dspread/xpos/g;->b(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    const-string p1, "cardserver"

    const-string v1, "command  = TimeIsOver(30"

    invoke-static {p1, v1}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    const/16 v1, 0x1f

    .line 82
    :try_start_2
    invoke-direct {p0, v1}, Lcom/dspread/xpos/g;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private b(I[II)[I
    .locals 9

    const/16 p2, 0x20

    mul-int/2addr p1, p2

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_0

    if-le p3, p2, :cond_1

    .line 30
    :cond_0
    const-string p2, "key_download:if(addr>(4*1024)  || (key_len > 24))"

    invoke-static {p2}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;)V

    :cond_1
    const/16 p2, 0xf

    .line 32
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    add-int/lit8 v0, p3, 0x4

    .line 38
    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 40
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v3, p1, 0xff

    .line 42
    aput v3, v1, v2

    const/16 v3, 0x8

    shr-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 43
    const/4 v4, 0x1

    aput p1, v1, v4

    and-int/lit16 p1, p3, 0xff

    .line 44
    const/4 v4, 0x2

    aput p1, v1, v4

    const p1, 0xff00

    and-int/2addr p3, p1

    shr-int/2addr p3, v3

    const/4 v5, 0x3

    .line 45
    aput p3, v1, v5

    add-int/lit8 p3, v0, 0xf

    const/4 v5, 0x5

    sub-int/2addr p3, v5

    .line 50
    new-array v6, p3, [I

    and-int/lit16 v7, v0, 0xff

    .line 51
    const/4 v8, 0x4

    aput v7, p2, v8

    and-int/2addr p1, v0

    shr-int/2addr p1, v3

    .line 52
    aput p1, p2, v5

    .line 54
    invoke-static {p2, v2, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    invoke-static {v1, v2, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p3, -0x1

    const/16 p2, 0x16

    .line 58
    aput p2, v6, p1

    sub-int/2addr p3, v4

    const/16 p1, 0xb5

    .line 59
    aput p1, v6, p3

    .line 63
    invoke-direct {p0, v6}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x68
        0x68
        0x68
        0x0
        0x5
        0x0
        0x68
        0x56
        0x0
        0x84
        0x0
        0x0
        0x8
        0xb5
        0x16
    .end array-data
.end method

.method private varargs c([I)Ljava/lang/StringBuilder;
    .locals 5

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 8
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 9
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget v4, p1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, ",%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private d(I)V
    .locals 2

    int-to-long v0, p1

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method private varargs e([I)[I
    .locals 4

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 8
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 9
    iget-object v2, p0, Lcom/dspread/xpos/g;->c:Ljava/io/OutputStream;

    aget v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_0
    return-object v0
.end method

.method private varargs declared-synchronized f([I)[I
    .locals 5

    monitor-enter p0

    .line 2
    const/4 v0, 0x3

    :try_start_0
    new-array v1, v0, [I

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/g;->j()V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :try_start_1
    iget v3, p0, Lcom/dspread/xpos/g;->g:I

    and-int/lit16 v4, v3, 0xff

    aput v4, p1, v0

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    iput v4, v0, Lcom/dspread/xpos/m;->i:I

    add-int/lit8 v3, v3, 0x1

    .line 10
    iput v3, p0, Lcom/dspread/xpos/g;->g:I

    const/4 v0, 0x0

    .line 11
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 13
    iget-object v3, p0, Lcom/dspread/xpos/g;->c:Ljava/io/OutputStream;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "cardserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command send = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    iget v2, v0, Lcom/dspread/xpos/m;->i:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x7

    aget v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lcom/dspread/xpos/m;->c(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 21
    iget-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {p1}, Lcom/dspread/xpos/m;->c()[I

    move-result-object v1

    .line 22
    const-string p1, "cardserver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "command  =  get frame "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/dspread/xpos/a1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {p1}, Lcom/dspread/xpos/m;->a()V

    goto :goto_2

    .line 32
    :catch_0
    move-exception p1

    goto :goto_2

    .line 23
    :cond_1
    const/4 v0, 0x5

    .line 26
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    const-string p1, "cardserver"

    const-string v0, "798 over time "

    invoke-static {p1, v0}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {p1}, Lcom/dspread/xpos/m;->d()V

    goto :goto_2

    :cond_2
    const/16 v0, 0x32

    .line 32
    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->d(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    monitor-exit p0

    return-object v1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private varargs declared-synchronized g([I)[I
    .locals 5

    monitor-enter p0

    .line 2
    const/4 v0, 0x3

    :try_start_0
    new-array v1, v0, [I

    .line 3
    invoke-virtual {p0}, Lcom/dspread/xpos/g;->j()V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :try_start_1
    iget v3, p0, Lcom/dspread/xpos/g;->g:I

    and-int/lit16 v4, v3, 0xff

    aput v4, p1, v0

    .line 10
    iget-object v0, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    iput v4, v0, Lcom/dspread/xpos/m;->i:I

    add-int/lit8 v3, v3, 0x1

    .line 11
    iput v3, p0, Lcom/dspread/xpos/g;->g:I

    const/4 v0, 0x0

    .line 12
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 14
    iget-object v3, p0, Lcom/dspread/xpos/g;->c:Ljava/io/OutputStream;

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write(I)V

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "cardserver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "tamp send = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/dspread/xpos/a1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_1
    iget-object v0, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    iget v2, v0, Lcom/dspread/xpos/m;->i:I

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x7

    aget v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lcom/dspread/xpos/m;->c(II)I

    move-result v0

    if-lez v0, :cond_1

    .line 22
    iget-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {p1}, Lcom/dspread/xpos/m;->c()[I

    move-result-object v1

    .line 23
    const-string p1, "cardserver"

    const-string/jumbo v0, "tamp  get frame "

    invoke-static {p1, v0}, Lcom/dspread/xpos/a1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {p1}, Lcom/dspread/xpos/m;->a()V

    goto :goto_2

    .line 33
    :catch_0
    move-exception p1

    goto :goto_2

    .line 24
    :cond_1
    const/4 v0, 0x5

    .line 27
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/g;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {v0}, Lcom/dspread/xpos/m;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x32

    .line 33
    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->d(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    monitor-exit p0

    return-object v1

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method a(B)I
    .locals 0

    if-gez p1, :cond_0

    and-int/lit8 p1, p1, 0x7f

    or-int/lit16 p1, p1, 0x80

    :cond_0
    return p1
.end method

.method public a([II)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object p1, Lcom/dspread/xpos/f;->k:[I

    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->e([I)[I

    .line 2
    const/16 p1, 0xc

    new-array p1, p1, [I

    fill-array-data p1, :array_0

    .line 3
    const/16 p2, 0x64

    invoke-direct {p0, p2}, Lcom/dspread/xpos/g;->d(I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cardState.length:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;)V

    .line 7
    array-length p2, p1

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    .line 12
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget v4, p1, v2

    int-to-char v4, v4

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%c"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CardControlInit = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "cardserver"

    invoke-static {p2, p1}, Lcom/dspread/xpos/a1;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x68
        0x68
        0x68
        0x0
        0x2
        0x0
        0x68
        0x58
        0x4
        0xfe
        0x11
        0x16
    .end array-data
.end method

.method public a()Z
    .locals 2

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/g;->a(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public a(I[II)Z
    .locals 8

    const/16 v0, 0x20

    mul-int/2addr p1, v0

    const/4 v1, 0x0

    const/16 v2, 0x1000

    if-gt p1, v2, :cond_2

    if-gt p3, v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    add-int/lit8 v2, p3, 0x4

    .line 35
    new-array v3, v2, [I

    and-int/lit16 v4, p1, 0xff

    .line 36
    aput v4, v3, v1

    const/16 v4, 0x8

    shr-int/2addr p1, v4

    and-int/lit16 p1, p1, 0xff

    .line 37
    const/4 v5, 0x1

    aput p1, v3, v5

    and-int/lit16 p1, p3, 0xff

    .line 38
    const/4 v6, 0x2

    aput p1, v3, v6

    .line 39
    const/4 p1, 0x3

    aput v1, v3, p1

    .line 40
    const/4 v7, 0x4

    invoke-static {p2, v1, v3, v7, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, v2, 0xf

    add-int/lit8 p2, p2, -0x5

    .line 46
    new-array p3, p2, [I

    .line 48
    invoke-static {v0, v1, p3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit16 v0, v2, 0xff

    .line 50
    aput v0, p3, v7

    .line 52
    invoke-static {v3, v1, p3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, -0x1

    const/16 v2, 0x16

    .line 54
    aput v2, p3, v0

    sub-int/2addr p2, v6

    const/16 v0, 0xb5

    .line 55
    aput v0, p3, p2

    .line 59
    invoke-direct {p0, p3}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p2

    .line 60
    array-length p3, p2

    if-ne p3, p1, :cond_1

    aget p1, p2, v1

    if-nez p1, :cond_1

    .line 62
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  key_download fail:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/a1;->a(Ljava/lang/String;)V

    return v1

    :cond_1
    return v5

    .line 63
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_download :if(addr>(4*1024)  || (key_len > 24))"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;)V

    return v1

    nop

    :array_0
    .array-data 4
        0x68
        0x68
        0x68
        0x0
        0x5
        0x0
        0x68
        0x57
        0x0
        0x84
        0x0
        0x0
        0x8
        0xb5
        0x16
    .end array-data
.end method

.method public a(Z)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 16
    sget-object p1, Lcom/dspread/xpos/f;->o:[I

    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    goto :goto_0

    .line 18
    :cond_0
    sget-object p1, Lcom/dspread/xpos/f;->n:[I

    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    :goto_0
    nop

    .line 20
    const/4 v0, 0x0

    aget p1, p1, v0

    const/16 v1, 0x33

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method public a(II[B[B)[B
    .locals 7

    .line 83
    array-length v0, p4

    const/4 v1, 0x3

    add-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_3

    const/16 p2, 0x60

    if-nez p3, :cond_0

    .line 88
    new-array p1, v4, [B

    return-object p1

    .line 90
    :cond_0
    array-length v5, p3

    if-eqz v5, :cond_2

    array-length v5, p3

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    array-length v5, p3

    add-int/2addr v0, v5

    .line 94
    new-array v0, v0, [I

    .line 96
    aput v3, v0, v4

    .line 97
    array-length v5, p4

    aput v5, v0, v3

    .line 98
    aput p1, v0, v2

    .line 99
    invoke-virtual {p0, p4}, Lcom/dspread/xpos/g;->a([B)[I

    move-result-object p1

    array-length v2, p4

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    invoke-virtual {p0, p3}, Lcom/dspread/xpos/g;->a([B)[I

    move-result-object p1

    array-length p4, p4

    add-int/2addr p4, v1

    array-length p3, p3

    invoke-static {p1, v4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/g;->b([II)[I

    move-result-object p1

    .line 107
    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/g;->d([I)[B

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    nop

    .line 112
    new-array p1, v4, [B

    return-object p1

    .line 134
    :cond_3
    new-array p2, v0, [I

    .line 136
    aput v3, p2, v4

    .line 137
    array-length p3, p4

    aput p3, p2, v3

    .line 138
    aput p1, p2, v2

    .line 139
    invoke-virtual {p0, p4}, Lcom/dspread/xpos/g;->a([B)[I

    move-result-object p1

    array-length p3, p4

    invoke-static {p1, v4, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    const/16 p1, 0x59

    invoke-virtual {p0, p2, p1}, Lcom/dspread/xpos/g;->b([II)[I

    move-result-object p1

    .line 145
    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/g;->d([I)[B

    move-result-object p1

    return-object p1
.end method

.method public varargs a([B)[I
    .locals 3

    .line 150
    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 151
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 152
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/dspread/xpos/g;->a(B)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a([I)[I
    .locals 4

    .line 22
    iget v0, p0, Lcom/dspread/xpos/g;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dspread/xpos/g;->k:I

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "send:{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->c([I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "cardserver"

    invoke-static {v2, v0}, Lcom/dspread/xpos/a1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/g;->b([I)[I

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rec:{"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->c([I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/dspread/xpos/a1;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->d(I)V

    return-object p1
.end method

.method b(I)Z
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 65
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    .line 66
    iget v1, p0, Lcom/dspread/xpos/g;->e:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x3c

    :cond_0
    sub-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public b(II[B[B)[B
    .locals 7

    .line 67
    array-length v0, p4

    const/4 v1, 0x3

    add-int/2addr v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_3

    const/16 p2, 0x60

    if-nez p3, :cond_0

    .line 72
    new-array p1, v4, [B

    return-object p1

    .line 74
    :cond_0
    array-length v5, p3

    if-eqz v5, :cond_2

    array-length v5, p3

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    goto :goto_0

    .line 77
    :cond_1
    array-length v5, p3

    add-int/2addr v0, v5

    .line 78
    new-array v0, v0, [I

    .line 80
    aput v4, v0, v4

    .line 81
    array-length v5, p4

    aput v5, v0, v3

    .line 82
    aput p1, v0, v2

    .line 83
    invoke-virtual {p0, p4}, Lcom/dspread/xpos/g;->a([B)[I

    move-result-object p1

    array-length v2, p4

    invoke-static {p1, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    invoke-virtual {p0, p3}, Lcom/dspread/xpos/g;->a([B)[I

    move-result-object p1

    array-length p4, p4

    add-int/2addr p4, v1

    array-length p3, p3

    invoke-static {p1, v4, v0, p4, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    invoke-virtual {p0, v0, p2}, Lcom/dspread/xpos/g;->b([II)[I

    move-result-object p1

    .line 91
    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/g;->d([I)[B

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    nop

    .line 96
    new-array p1, v4, [B

    return-object p1

    .line 118
    :cond_3
    new-array p2, v0, [I

    .line 120
    aput v4, p2, v4

    .line 121
    array-length p3, p4

    aput p3, p2, v3

    .line 122
    aput p1, p2, v2

    .line 123
    invoke-virtual {p0, p4}, Lcom/dspread/xpos/g;->a([B)[I

    move-result-object p1

    array-length p3, p4

    invoke-static {p1, v4, p2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    const/16 p1, 0x59

    invoke-virtual {p0, p2, p1}, Lcom/dspread/xpos/g;->b([II)[I

    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/g;->d([I)[B

    move-result-object p1

    return-object p1
.end method

.method public b()[I
    .locals 5

    .line 1
    sget-object v0, Lcom/dspread/xpos/f;->e:[I

    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object v0

    .line 2
    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    array-length v2, v0

    sub-int/2addr v2, v3

    .line 8
    new-array v4, v2, [I

    .line 9
    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    .line 10
    :cond_1
    :goto_0
    const-string v0, "cardserver"

    const-string v2, "card reset fail"

    invoke-static {v0, v2}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-array v0, v1, [I

    return-object v0
.end method

.method public b([I)[I
    .locals 6

    .line 12
    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 13
    array-length v2, p1

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x5

    .line 16
    new-array v0, v2, [I

    .line 18
    const/4 v3, 0x0

    const/16 v4, 0x8

    invoke-static {v1, v3, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    const/4 v5, 0x4

    aput v1, v0, v5

    .line 22
    array-length v1, p1

    invoke-static {p1, v3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, v2, -0x1

    .line 24
    const/16 v1, 0x16

    aput v1, v0, p1

    add-int/lit8 v2, v2, -0x2

    .line 25
    const/16 p1, 0xb5

    aput p1, v0, v2

    .line 29
    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x68
        0x68
        0x68
        0x0
        0x5
        0x0
        0x68
        0x55
        0x0
        0x84
        0x0
        0x0
        0x8
        0xb5
        0x16
    .end array-data
.end method

.method public b([II)[I
    .locals 6

    .line 134
    const/16 v0, 0xf

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 135
    array-length v2, p1

    add-int/2addr v2, v0

    const/4 v0, 0x5

    sub-int/2addr v2, v0

    .line 136
    new-array v3, v2, [I

    .line 137
    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-static {v1, v4, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    array-length v1, p1

    invoke-static {p1, v4, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 141
    iget-object v1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, p1

    and-int/lit16 v1, v1, 0xff

    const/4 v4, 0x4

    aput v1, v3, v4

    .line 142
    iget-object v1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, p1

    shr-int/2addr p1, v5

    and-int/lit16 p1, p1, 0xff

    aput p1, v3, v0

    .line 144
    iget-object p1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit16 p1, p2, 0xff

    const/4 p2, 0x7

    aput p1, v3, p2

    add-int/lit8 p1, v2, -0x1

    .line 146
    const/16 p2, 0x16

    aput p2, v3, p1

    add-int/lit8 v2, v2, -0x2

    .line 147
    const/16 p1, 0xb5

    aput p1, v3, v2

    return-object v3

    :array_0
    .array-data 4
        0x68
        0x68
        0x68
        0x0
        0x5
        0x0
        0x68
        0x55
        0x0
        0x84
        0x0
        0x0
        0x8
        0xb5
        0x16
    .end array-data
.end method

.method c(I)Z
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 45
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    .line 46
    iget v1, p0, Lcom/dspread/xpos/g;->f:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x3c

    :cond_0
    sub-int/2addr v0, v1

    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c()[I
    .locals 4

    .line 1
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    iget v2, p0, Lcom/dspread/xpos/g;->h:I

    const/16 v3, 0x52

    invoke-virtual {v1, v2, v3}, Lcom/dspread/xpos/m;->c(II)I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    invoke-virtual {v0}, Lcom/dspread/xpos/m;->c()[I

    move-result-object v0

    .line 5
    array-length v1, v0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 6
    const-string v1, "cardserver"

    const-string v2, "msr proc err "

    invoke-static {v1, v2}, Lcom/dspread/xpos/a1;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public c(I[II)[I
    .locals 5

    const/16 p2, 0x18

    mul-int/2addr p1, p2

    const/16 v0, 0x1000

    if-gt p1, v0, :cond_0

    if-le p3, p2, :cond_1

    .line 10
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "key_upload_sub (addr>(4*1024)  || (key_len > 24))"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;)V

    :cond_1
    const/16 p2, 0xf

    .line 12
    new-array p2, p2, [I

    fill-array-data p2, :array_0

    .line 18
    const/4 v0, 0x4

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    .line 20
    aput v2, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    and-int/lit16 v3, p1, 0xff

    .line 22
    aput v3, v1, v2

    const/16 v3, 0x8

    shr-int/2addr p1, v3

    and-int/lit16 p1, p1, 0xff

    .line 23
    const/4 v4, 0x1

    aput p1, v1, v4

    and-int/lit16 p1, p3, 0xff

    const/4 v4, 0x2

    .line 24
    aput p1, v1, v4

    const p1, 0xff00

    and-int/2addr p1, p3

    shr-int/2addr p1, v3

    const/4 p3, 0x3

    .line 25
    aput p1, v1, p3

    const/16 p1, 0xe

    .line 30
    new-array p1, p1, [I

    .line 31
    aput v0, p2, v0

    const/4 p3, 0x5

    .line 32
    aput v2, p2, p3

    .line 34
    invoke-static {p2, v2, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xd

    const/16 p3, 0x16

    .line 38
    aput p3, p1, p2

    const/16 p2, 0xc

    const/16 p3, 0xb5

    .line 39
    aput p3, p1, p2

    .line 43
    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 4
        0x68
        0x68
        0x68
        0x0
        0x5
        0x0
        0x68
        0x56
        0x0
        0x84
        0x0
        0x0
        0x8
        0xb5
        0x16
    .end array-data
.end method

.method public d()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/f;->k:[I

    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->f([I)[I

    const/4 v0, 0x1

    return v0
.end method

.method public varargs d([I)[B
    .locals 3

    .line 3
    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 5
    aget v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public e()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/dspread/xpos/g;->g:I

    iput v0, p0, Lcom/dspread/xpos/g;->h:I

    .line 3
    sget-object v0, Lcom/dspread/xpos/f;->i:[I

    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object v0

    .line 4
    const/4 v1, 0x0

    aget v0, v0, v1

    sget-object v2, Lcom/dspread/xpos/f;->i:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method public f()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/g;->b:Lcom/dspread/xpos/m;

    iget v0, v0, Lcom/dspread/xpos/m;->i:I

    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->a(I)[I

    move-result-object v0

    return-object v0
.end method

.method public g()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/f;->c:[I

    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->g([I)[I

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    .line 8
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    .line 11
    nop

    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "unknown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 14
    :cond_1
    :goto_0
    const-string/jumbo v0, "tesqt"

    const-string v1, "SecureGet_SN isEmpty()"

    invoke-static {v0, v1}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hdx5567891234560"

    return-object v0
.end method

.method public h([I)[I
    .locals 3

    .line 1
    sget-object v0, Lcom/dspread/xpos/f;->m:[I

    array-length v1, p1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 3
    invoke-direct {p0, p1}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object p1

    .line 4
    array-length v0, p1

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 7
    new-array p1, p1, [I

    return-object p1
.end method

.method public i()[I
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/f;->b:[I

    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->f([I)[I

    move-result-object v0

    return-object v0
.end method

.method j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, p0, Lcom/dspread/xpos/g;->e:I

    return-void
.end method

.method k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/g;->d:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->second:I

    iput v0, p0, Lcom/dspread/xpos/g;->f:I

    return-void
.end method

.method public l()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/g;->k()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x5

    .line 7
    invoke-direct {p0, v0}, Lcom/dspread/xpos/g;->d(I)V

    const/16 v0, 0xa

    .line 8
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/g;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    const-string/jumbo v0, "quck"

    const-string/jumbo v1, "time is over -wait card"

    invoke-static {v0, v1}, Lcom/dspread/xpos/a1;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 8
    :cond_1
    goto :goto_0
.end method
