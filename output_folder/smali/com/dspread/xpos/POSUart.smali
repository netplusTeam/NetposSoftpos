.class public Lcom/dspread/xpos/POSUart;
.super Lcom/dspread/xpos/Vpos;
.source "POSUart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/POSUart$UPDATE_STATE;
    }
.end annotation


# static fields
.field private static a0:Lcom/dspread/xpos/POSUart;


# instance fields
.field private P:Ljava/io/OutputStream;

.field private Q:Ljava/io/InputStream;

.field public R:Ljava/io/InputStream;

.field public S:Ljava/io/OutputStream;

.field private T:Z

.field private U:Ljava/lang/String;

.field private V:[B

.field private W:I

.field private X:Z

.field private Y:I

.field private Z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/Vpos;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/POSUart;->P:Ljava/io/OutputStream;

    .line 6
    iput-object v0, p0, Lcom/dspread/xpos/POSUart;->Q:Ljava/io/InputStream;

    .line 7
    iput-object v0, p0, Lcom/dspread/xpos/POSUart;->R:Ljava/io/InputStream;

    .line 8
    iput-object v0, p0, Lcom/dspread/xpos/POSUart;->S:Ljava/io/OutputStream;

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/POSUart;->T:Z

    .line 10
    const-string v1, "COM4"

    iput-object v1, p0, Lcom/dspread/xpos/POSUart;->U:Ljava/lang/String;

    .line 96
    const/16 v1, 0x800

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/POSUart;->V:[B

    .line 97
    iput v0, p0, Lcom/dspread/xpos/POSUart;->W:I

    .line 98
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/dspread/xpos/POSUart;->X:Z

    .line 99
    iput v0, p0, Lcom/dspread/xpos/POSUart;->Y:I

    .line 282
    iput-boolean v0, p0, Lcom/dspread/xpos/POSUart;->Z:Z

    return-void
.end method

.method public static G()Lcom/dspread/xpos/POSUart;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/POSUart;->a0:Lcom/dspread/xpos/POSUart;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/dspread/xpos/POSUart;

    invoke-direct {v0}, Lcom/dspread/xpos/POSUart;-><init>()V

    sput-object v0, Lcom/dspread/xpos/POSUart;->a0:Lcom/dspread/xpos/POSUart;

    .line 4
    :cond_0
    sget-object v0, Lcom/dspread/xpos/POSUart;->a0:Lcom/dspread/xpos/POSUart;

    return-object v0
.end method

.method private H()[B
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/dspread/xpos/POSUart;->I()[B

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [B

    return-object v0

    .line 7
    :cond_0
    array-length v1, v0

    return-object v0
.end method

.method private I()[B
    .locals 7

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 6
    const/4 v2, 0x1

    :try_start_0
    iget v3, p0, Lcom/dspread/xpos/POSUart;->W:I

    if-lez v3, :cond_0

    .line 7
    iget v4, p0, Lcom/dspread/xpos/POSUart;->Y:I

    if-eq v3, v4, :cond_0

    .line 8
    new-array v4, v3, [B

    .line 9
    iget-object v5, p0, Lcom/dspread/xpos/POSUart;->V:[B

    invoke-static {v5, v0, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_0
    iput v3, p0, Lcom/dspread/xpos/POSUart;->Y:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_4

    .line 13
    iget-object v4, p0, Lcom/dspread/xpos/POSUart;->V:[B

    aget-byte v5, v4, v0

    const/16 v6, 0x4d

    if-eq v5, v6, :cond_1

    .line 14
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 15
    new-array v0, v0, [B

    return-object v0

    :cond_1
    const/4 v5, 0x2

    .line 17
    aget-byte v5, v4, v5

    if-gez v5, :cond_2

    add-int/lit16 v5, v5, 0x100

    .line 21
    :cond_2
    aget-byte v6, v4, v2

    mul-int/lit16 v6, v6, 0x100

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    if-ne v5, v3, :cond_3

    .line 25
    new-array v1, v3, [B

    .line 26
    invoke-static {v4, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_3
    if-ge v5, v3, :cond_4

    .line 29
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 30
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 35
    new-array v1, v0, [B

    .line 36
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    :cond_4
    return-object v1
.end method

.method private J()[B
    .locals 9

    .line 1
    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 3
    const/4 v2, 0x1

    const/4 v3, 0x2

    :try_start_0
    new-array v4, v3, [B

    .line 6
    iget v5, p0, Lcom/dspread/xpos/POSUart;->W:I

    const/4 v6, 0x6

    if-lt v5, v6, :cond_4

    .line 7
    iget-object v5, p0, Lcom/dspread/xpos/POSUart;->V:[B

    aget-byte v6, v5, v0

    const/16 v7, 0x44

    if-eq v6, v7, :cond_0

    .line 8
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 9
    new-array v0, v0, [B

    return-object v0

    :cond_0
    nop

    .line 12
    aget-byte v5, v5, v2

    const/16 v6, 0x50

    if-eq v5, v6, :cond_1

    .line 13
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 14
    new-array v0, v0, [B

    return-object v0

    :cond_1
    const/4 v5, 0x4

    move v6, v0

    :goto_0
    if-ge v6, v3, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 20
    new-array v0, v0, [B

    return-object v0

    .line 22
    :cond_2
    iget-object v7, p0, Lcom/dspread/xpos/POSUart;->V:[B

    add-int/lit8 v8, v5, 0x1

    aget-byte v5, v7, v5

    aput-byte v5, v4, v6

    add-int/lit8 v6, v6, 0x1

    move v5, v8

    goto :goto_0

    .line 24
    :cond_3
    invoke-static {v4}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v3

    goto :goto_1

    .line 6
    :cond_4
    move v3, v0

    .line 28
    :goto_1
    iget v4, p0, Lcom/dspread/xpos/POSUart;->W:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_5

    if-nez v3, :cond_9

    :cond_5
    add-int/lit8 v3, v3, 0xc

    if-ne v4, v3, :cond_9

    .line 32
    new-array v1, v3, [B

    .line 33
    iget-object v4, p0, Lcom/dspread/xpos/POSUart;->V:[B

    invoke-static {v4, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v0

    move v5, v4

    :goto_2
    const/16 v6, 0xb

    if-ge v4, v3, :cond_7

    if-eq v4, v6, :cond_6

    .line 37
    aget-byte v6, v1, v4

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    nop

    .line 43
    aget-byte v3, v1, v6

    if-eq v5, v3, :cond_8

    .line 45
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 46
    new-array v0, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_8
    return-object v1

    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {p0, v2}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 56
    new-array v1, v0, [B

    :cond_9
    return-object v1
.end method

.method private a(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/dspread/xpos/POSUart;->W:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    .line 3
    new-array v1, v0, [B

    .line 5
    iput-boolean v0, p0, Lcom/dspread/xpos/POSUart;->X:Z

    .line 6
    iput v0, p0, Lcom/dspread/xpos/POSUart;->Y:I

    .line 7
    :cond_0
    iget-boolean v2, p0, Lcom/dspread/xpos/POSUart;->X:Z

    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    const/16 v1, 0x400

    new-array v2, v1, [B

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 13
    iget-object v3, p0, Lcom/dspread/xpos/POSUart;->V:[B

    iget v4, p0, Lcom/dspread/xpos/POSUart;->W:I

    invoke-static {v2, v0, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iget v2, p0, Lcom/dspread/xpos/POSUart;->W:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/dspread/xpos/POSUart;->W:I

    .line 19
    invoke-virtual {p0}, Lcom/dspread/xpos/POSUart;->y()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 20
    invoke-direct {p0}, Lcom/dspread/xpos/POSUart;->J()[B

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_1
    invoke-direct {p0}, Lcom/dspread/xpos/POSUart;->H()[B

    move-result-object v1

    .line 24
    :goto_0
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    if-eqz v1, :cond_3

    .line 27
    array-length v2, v1

    if-lez v2, :cond_3

    return-object v1

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/dspread/xpos/Vpos;->u()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_4
    return-object v1
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()[B
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/POSUart;->Z:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    new-array v0, v1, [B

    return-object v0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/POSUart;->Q:Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/dspread/xpos/POSUart;->a(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 10
    new-array v0, v1, [B

    return-object v0
.end method

.method protected F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/POSUart;->U:Ljava/lang/String;

    return-object v0
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 1

    .line 2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/dspread/xpos/Vpos;->h(Z)V

    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/POSUart;->U:Ljava/lang/String;

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f([B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/POSUart;->Z:Z

    .line 2
    invoke-virtual {p0, v0}, Lcom/dspread/xpos/POSUart;->o(Z)V

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/POSUart;->P:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 5
    iget-object p1, p0, Lcom/dspread/xpos/POSUart;->P:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/dspread/xpos/POSUart;->Z:Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/POSUart;->o(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected n(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/POSUart;->T:Z

    return-void
.end method

.method protected o(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/POSUart;->Z:Z

    return-void
.end method

.method protected y()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/POSUart;->T:Z

    return v0
.end method
