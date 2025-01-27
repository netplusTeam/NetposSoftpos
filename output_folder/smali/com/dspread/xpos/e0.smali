.class public Lcom/dspread/xpos/e0;
.super Ljava/lang/Object;
.source "MyTLV.java"


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/dspread/xpos/e0;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/dspread/xpos/e0;->b:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/e0;->a:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/dspread/xpos/e0;->c:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/e0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/e0;->c:[B

    return-object v0
.end method
