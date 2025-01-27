.class public Lcom/dspread/xpos/a0;
.super Ljava/lang/Object;
.source "LPositon.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/dspread/xpos/a0;->a:I

    .line 3
    iput p2, p0, Lcom/dspread/xpos/a0;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/a0;->b:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/dspread/xpos/a0;->b:I

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/a0;->a:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/dspread/xpos/a0;->a:I

    return-void
.end method
