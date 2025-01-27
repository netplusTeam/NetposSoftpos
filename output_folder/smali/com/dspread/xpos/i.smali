.class public Lcom/dspread/xpos/i;
.super Ljava/lang/Object;
.source "CommandDownlink.java"


# instance fields
.field private a:Lcom/dspread/xpos/i0;


# direct methods
.method public constructor <init>(III)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    .line 5
    const/4 v0, 0x0

    new-array v6, v0, [B

    const/16 v2, 0x21

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/dspread/xpos/i;->a(IIII[B)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 7

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    .line 45
    const/4 v0, 0x0

    new-array v6, v0, [B

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/dspread/xpos/i;->a(IIII[B)V

    return-void
.end method

.method public constructor <init>(IIII[B)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/dspread/xpos/i;->a(IIII[B)V

    return-void
.end method

.method public constructor <init>(III[B)V
    .locals 7

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    .line 14
    const/16 v2, 0x21

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/dspread/xpos/i;->a(IIII[B)V

    return-void
.end method

.method private a(IIII[B)V
    .locals 2

    .line 1
    new-instance v0, Lcom/dspread/xpos/i0;

    array-length v1, p5

    invoke-direct {v0, v1}, Lcom/dspread/xpos/i0;-><init>(I)V

    iput-object v0, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    int-to-byte p1, p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/dspread/xpos/i0;->c(B)V

    .line 3
    iget-object p1, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/i0;->b(B)V

    .line 4
    iget-object p1, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    int-to-byte p2, p3

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/i0;->d(B)V

    .line 5
    iget-object p1, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    int-to-byte p2, p4

    invoke-virtual {p1, p2}, Lcom/dspread/xpos/i0;->e(B)V

    .line 6
    iget-object p1, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {p1, p5}, Lcom/dspread/xpos/i0;->a([B)V

    .line 7
    iget-object p1, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {p1}, Lcom/dspread/xpos/i0;->a()V

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    invoke-virtual {v0, p1}, Lcom/dspread/xpos/i0;->a(I)B

    move-result p1

    return p1
.end method

.method public a()[B
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/dspread/xpos/i;->a:Lcom/dspread/xpos/i0;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/dspread/xpos/i0;->c()[B

    move-result-object v0

    return-object v0
.end method
