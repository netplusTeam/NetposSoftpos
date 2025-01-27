.class public abstract Lcom/mastercard/terminalsdk/internal/N;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private final c:I

.field private d:[B

.field private e:B

.field private g:B

.field private i:Z


# direct methods
.method public constructor <init>(BBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/N;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/N;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/internal/N;->i:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mastercard/terminalsdk/internal/N;->d(BBBB)V

    iput-byte p5, p0, Lcom/mastercard/terminalsdk/internal/N;->g:B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/internal/N;->i:Z

    return-void
.end method

.method public constructor <init>(BBBB[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/N;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/N;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/internal/N;->i:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mastercard/terminalsdk/internal/N;->d(BBBB)V

    invoke-direct {p0, p5}, Lcom/mastercard/terminalsdk/internal/N;->b([B)V

    return-void
.end method

.method public constructor <init>(BBBB[BB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/mastercard/terminalsdk/internal/N;->c:I

    const-string v0, ""

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/N;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/internal/N;->i:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mastercard/terminalsdk/internal/N;->d(BBBB)V

    invoke-direct {p0, p5}, Lcom/mastercard/terminalsdk/internal/N;->b([B)V

    iput-byte p6, p0, Lcom/mastercard/terminalsdk/internal/N;->g:B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/mastercard/terminalsdk/internal/N;->i:Z

    return-void
.end method

.method private b([B)V
    .locals 1

    array-length v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/mastercard/terminalsdk/internal/N;->e:B

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/N;->d:[B

    return-void
.end method

.method private final d(BBBB)V
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/mastercard/terminalsdk/internal/N;->a:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const/4 p1, 0x1

    aput-byte p2, v0, p1

    const/4 p1, 0x2

    aput-byte p3, v0, p1

    const/4 p1, 0x3

    aput-byte p4, v0, p1

    return-void
.end method


# virtual methods
.method public final e()[B
    .locals 6

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/N;->d:[B

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v2, p0, Lcom/mastercard/terminalsdk/internal/N;->i:Z

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    new-array v2, v0, [B

    iget-object v3, p0, Lcom/mastercard/terminalsdk/internal/N;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/mastercard/terminalsdk/internal/N;->d:[B

    if-eqz v3, :cond_2

    iget-byte v5, p0, Lcom/mastercard/terminalsdk/internal/N;->e:B

    aput-byte v5, v2, v1

    const/4 v1, 0x5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v3, v4, v2, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-boolean v1, p0, Lcom/mastercard/terminalsdk/internal/N;->i:Z

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iget-byte v1, p0, Lcom/mastercard/terminalsdk/internal/N;->g:B

    aput-byte v1, v2, v0

    :cond_3
    return-object v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
