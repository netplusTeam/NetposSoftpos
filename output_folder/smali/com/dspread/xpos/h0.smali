.class public abstract Lcom/dspread/xpos/h0;
.super Ljava/lang/Object;
.source "POS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/h0$b;
    }
.end annotation


# static fields
.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x20

.field private static final j:I = 0x21

.field private static final k:I = 0x22

.field private static final l:I = 0x23

.field private static final m:I = 0x24

.field private static final n:I = 0x25

.field private static final o:I = 0x26

.field private static final p:I = 0x27

.field private static final q:I = 0x28

.field private static final r:I = 0x29


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private f:Lcom/dspread/xpos/i0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/h0;->a:Z

    .line 18
    iput-boolean v0, p0, Lcom/dspread/xpos/h0;->b:Z

    .line 19
    iput-boolean v0, p0, Lcom/dspread/xpos/h0;->c:Z

    .line 20
    const/4 v0, 0x5

    iput v0, p0, Lcom/dspread/xpos/h0;->d:I

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/dspread/xpos/h0;->e:I

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/h0;)Lcom/dspread/xpos/i0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    return-object p0
.end method

.method static synthetic a(Lcom/dspread/xpos/h0;Lcom/dspread/xpos/i0;)Lcom/dspread/xpos/i0;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    return-object p1
.end method

.method private a(I)Lcom/dspread/xpos/j;
    .locals 6

    .line 11
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "receiveCommand"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/dspread/xpos/h0;->a()V

    .line 14
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/dspread/xpos/h0$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/dspread/xpos/h0$b;-><init>(Lcom/dspread/xpos/h0;Lcom/dspread/xpos/h0$a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    mul-int/lit16 p1, p1, 0x3e8

    .line 18
    :cond_0
    iget-boolean v1, p0, Lcom/dspread/xpos/h0;->a:Z

    const/4 v3, 0x1

    if-nez v1, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 20
    invoke-static {v3}, Lcom/dspread/xpos/h0;->d(I)V

    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/dspread/xpos/h0;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Vpos] receiveCommand: timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/dspread/xpos/h0;->e()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tie: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/h0;->b(Z)V

    .line 24
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 26
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    :goto_0
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "--------------receiveCommand-----------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    .line 38
    :cond_2
    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object p1

    array-length p1, p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->l()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 44
    new-instance v2, Lcom/dspread/xpos/j;

    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    invoke-direct {v2, p1}, Lcom/dspread/xpos/j;-><init>(Lcom/dspread/xpos/i0;)V

    const/4 p1, 0x0

    .line 45
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/h0;->a(Z)V

    goto :goto_1

    :cond_4
    nop

    .line 47
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/h0;->a(Z)V

    .line 49
    :goto_1
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "uc:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2

    .line 50
    :cond_5
    :goto_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v0, "pppp"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v2
.end method

.method private a()V
    .locals 2

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/h0;->b(Z)V

    .line 5
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    .line 6
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/h0;->a(Z)V

    .line 7
    iput-boolean v0, p0, Lcom/dspread/xpos/h0;->a:Z

    return-void
.end method

.method private a([B)V
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/h0;->b([B)V

    return-void
.end method

.method static synthetic a(Lcom/dspread/xpos/h0;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/dspread/xpos/h0;->a:Z

    return p1
.end method

.method static synthetic b(Lcom/dspread/xpos/h0;)Lcom/dspread/xpos/i0;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/h0;->g()Lcom/dspread/xpos/i0;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/dspread/xpos/h0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/dspread/xpos/h0;->a:Z

    return p0
.end method

.method private static d(I)V
    .locals 2

    int-to-long v0, p0

    .line 2
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method private g()Lcom/dspread/xpos/i0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/dspread/xpos/h0;->f()[B

    move-result-object v0

    .line 2
    new-instance v1, Lcom/dspread/xpos/i0;

    invoke-direct {v1, v0}, Lcom/dspread/xpos/i0;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public a(Lcom/dspread/xpos/i;)V
    .locals 0

    .line 10
    invoke-virtual {p1}, Lcom/dspread/xpos/i;->a()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/dspread/xpos/h0;->a([B)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/dspread/xpos/h0;->b:Z

    return-void
.end method

.method public abstract a(Ljava/lang/String;)Z
.end method

.method public b(I)Lcom/dspread/xpos/j;
    .locals 13

    .line 3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "receiveCommandWaitResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6
    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/dspread/xpos/h0;->d:I

    add-int/2addr v1, p1

    invoke-direct {p0, v1}, Lcom/dspread/xpos/h0;->a(I)Lcom/dspread/xpos/j;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    if-nez v1, :cond_0

    return-object v1

    .line 13
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/h0;->b(Z)V

    .line 14
    iget v3, p0, Lcom/dspread/xpos/h0;->d:I

    add-int/2addr p1, v3

    mul-int/lit16 p1, p1, 0x3e8

    .line 18
    :cond_1
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->b()B

    move-result v3

    const/16 v4, 0x23

    const/4 v5, 0x1

    const/16 v6, 0xf

    if-ne v3, v4, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 21
    invoke-static {v5}, Lcom/dspread/xpos/h0;->d(I)V

    if-nez p1, :cond_2

    goto :goto_0

    .line 27
    :cond_2
    invoke-virtual {p0}, Lcom/dspread/xpos/h0;->e()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 21
    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 34
    :cond_3
    new-instance v3, Lcom/dspread/xpos/i;

    const/16 v4, 0x22

    invoke-direct {v3, v4, v2, v2, v6}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 36
    invoke-virtual {p0, v3}, Lcom/dspread/xpos/h0;->a(Lcom/dspread/xpos/i;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 38
    :try_start_2
    iget v1, p0, Lcom/dspread/xpos/h0;->d:I

    add-int/lit8 v1, v1, 0xd

    invoke-direct {p0, v1}, Lcom/dspread/xpos/h0;->a(I)Lcom/dspread/xpos/j;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_1

    .line 43
    :try_start_3
    new-instance p1, Lcom/dspread/xpos/i;

    const/4 v3, 0x2

    invoke-direct {p1, v4, v2, v2, v3}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/h0;->a(Lcom/dspread/xpos/i;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 47
    :try_start_4
    invoke-direct {p0, v3}, Lcom/dspread/xpos/h0;->a(I)Lcom/dspread/xpos/j;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 112
    :catch_0
    move-exception p1

    goto/16 :goto_5

    .line 47
    :cond_4
    :goto_1
    if-eqz v1, :cond_a

    .line 53
    :try_start_5
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->b()B

    move-result p1

    const/16 v3, 0x36

    if-ne p1, v3, :cond_a

    .line 55
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->a()B

    move-result p1

    .line 56
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->g()B

    move-result v4

    const/16 v7, 0x5000

    .line 57
    new-array v8, v7, [B

    .line 59
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v9

    invoke-virtual {v1, v2, v9}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v9

    .line 60
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v10

    .line 61
    invoke-static {v9, v2, v8, v2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v9

    add-int/2addr v9, v2

    .line 64
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Vpos: read>>: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 65
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v12

    .line 66
    invoke-virtual {v1, v2, v12}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v12

    invoke-static {v12}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v10, 0x3a98

    .line 69
    :goto_2
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->b()B

    move-result v11

    if-ne v11, v3, :cond_8

    add-int/lit8 v10, v10, -0x1

    .line 72
    invoke-static {v5}, Lcom/dspread/xpos/h0;->d(I)V

    if-nez v10, :cond_5

    goto :goto_3

    .line 78
    :cond_5
    invoke-virtual {p0}, Lcom/dspread/xpos/h0;->e()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 72
    :goto_3
    goto :goto_4

    .line 83
    :cond_6
    new-instance v11, Lcom/dspread/xpos/i;

    invoke-direct {v11, v3, v2, v2, v6}, Lcom/dspread/xpos/i;-><init>(IIII)V

    .line 85
    invoke-virtual {p0, v11}, Lcom/dspread/xpos/h0;->a(Lcom/dspread/xpos/i;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 87
    :try_start_6
    iget v1, p0, Lcom/dspread/xpos/h0;->d:I

    add-int/2addr v1, v6

    invoke-direct {p0, v1}, Lcom/dspread/xpos/h0;->a(I)Lcom/dspread/xpos/j;

    move-result-object v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v1, :cond_7

    move-object v0, v1

    goto :goto_4

    .line 93
    :cond_7
    :try_start_7
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v11

    invoke-virtual {v1, v2, v11}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object v11

    .line 94
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v12

    .line 95
    invoke-static {v11, v2, v8, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    invoke-virtual {v1}, Lcom/dspread/xpos/j;->e()I

    move-result v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    add-int/2addr v9, v11

    goto :goto_2

    .line 69
    :cond_8
    move-object v0, v1

    .line 97
    :goto_4
    if-eqz v0, :cond_9

    .line 103
    :try_start_8
    new-array v1, v9, [B

    .line 104
    invoke-static {v8, v2, v1, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    new-instance v2, Lcom/dspread/xpos/i0;

    invoke-direct {v2, v7}, Lcom/dspread/xpos/i0;-><init>(I)V

    iput-object v2, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    const/16 v3, 0x24

    .line 106
    invoke-virtual {v2, v3}, Lcom/dspread/xpos/i0;->c(B)V

    .line 107
    iget-object v2, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    int-to-byte p1, p1

    invoke-virtual {v2, p1}, Lcom/dspread/xpos/i0;->b(B)V

    .line 108
    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    int-to-byte v2, v4

    invoke-virtual {p1, v2}, Lcom/dspread/xpos/i0;->d(B)V

    .line 109
    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    invoke-virtual {p1, v6}, Lcom/dspread/xpos/i0;->e(B)V

    .line 110
    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    invoke-virtual {p1, v1}, Lcom/dspread/xpos/i0;->a([B)V

    .line 111
    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->a()V

    .line 112
    new-instance v1, Lcom/dspread/xpos/j;

    iget-object p1, p0, Lcom/dspread/xpos/h0;->f:Lcom/dspread/xpos/i0;

    invoke-direct {v1, p1}, Lcom/dspread/xpos/j;-><init>(Lcom/dspread/xpos/i0;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_6

    .line 97
    :cond_9
    move-object v1, v0

    goto :goto_6

    .line 112
    :catch_1
    move-exception p1

    move-object v0, v1

    :goto_5
    move-object v1, v0

    :cond_a
    :goto_6
    return-object v1
.end method

.method public abstract b()V
.end method

.method public b(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/dspread/xpos/h0;->c:Z

    return-void
.end method

.method public abstract b([B)V
.end method

.method public c()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/h0;->e:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/dspread/xpos/h0;->e:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/h0;->b:Z

    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/h0;->c:Z

    return v0
.end method

.method public abstract f()[B
.end method
