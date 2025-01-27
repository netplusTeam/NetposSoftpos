.class Lcom/dspread/xpos/bean/emvCofig/b$a;
.super Ljava/lang/Object;
.source "EmvCapkConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bean/emvCofig/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final l:I = 0xf8


# instance fields
.field a:[B

.field b:B

.field c:[B

.field d:[B

.field e:[B

.field f:[B

.field g:B

.field h:B

.field i:B

.field j:B

.field k:[B


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0xf8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/bean/emvCofig/b$a;->a:[B

    .line 6
    const/4 v0, 0x3

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/dspread/xpos/bean/emvCofig/b$a;->c:[B

    .line 8
    const/16 v1, 0x14

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/bean/emvCofig/b$a;->d:[B

    .line 9
    const/4 v1, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/bean/emvCofig/b$a;->e:[B

    .line 10
    const/4 v1, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/dspread/xpos/bean/emvCofig/b$a;->f:[B

    .line 15
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/dspread/xpos/bean/emvCofig/b$a;->k:[B

    return-void
.end method
