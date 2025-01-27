.class public Lcom/dspread/xpos/j;
.super Ljava/lang/Object;
.source "CommandUplink.java"


# instance fields
.field private a:Lcom/dspread/xpos/i0;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/i0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 5

    .line 7
    const-string p0, "4D00272116201E002102313003000007201709131751430000000001010156000000DF1BA244BA6A901941"

    invoke-static {p0}, Lcom/dspread/xpos/Util;->HexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p0

    .line 9
    new-instance v0, Lcom/dspread/xpos/j;

    new-instance v1, Lcom/dspread/xpos/i0;

    invoke-direct {v1, p0}, Lcom/dspread/xpos/i0;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/dspread/xpos/j;-><init>(Lcom/dspread/xpos/i0;)V

    .line 11
    invoke-virtual {v0}, Lcom/dspread/xpos/j;->e()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/dspread/xpos/j;->a(II)[B

    move-result-object p0

    .line 12
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {p0}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 14
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v2, 0x1

    new-array v3, v2, [B

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->b()B

    move-result v4

    aput-byte v4, v3, v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v2, [B

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->a()B

    move-result v4

    aput-byte v4, v3, v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 20
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v3, v2, [B

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->g()B

    move-result v4

    aput-byte v4, v3, v1

    invoke-static {v3}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 22
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v2, v2, [B

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->f()B

    move-result v3

    aput-byte v3, v2, v1

    invoke-static {v2}, Lcom/dspread/xpos/Util;->byteArray2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 24
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/dspread/xpos/j;->h()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Z)V

    return-void
.end method


# virtual methods
.method public a()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->e()B

    move-result v0

    return v0
.end method

.method public a(I)B
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/i0;->b(I)B

    move-result p1

    return p1
.end method

.method public a(B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/i0;->c(B)V

    return-void
.end method

.method public a(II)[B
    .locals 4

    .line 4
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/dspread/xpos/i0;->b(I)B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public b()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->f()B

    move-result v0

    return v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->i()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/i0;->a(I)B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v1, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/dspread/xpos/i0;->a(I)B

    move-result v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    invoke-static {v0}, Lcom/dspread/xpos/Util;->byteArrayToInt([B)I

    move-result v0

    return v0
.end method

.method public f()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->h()B

    move-result v0

    return v0
.end method

.method public g()B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->g()B

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/j;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->l()Z

    move-result v0

    return v0
.end method
