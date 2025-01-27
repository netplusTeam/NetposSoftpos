.class public final Lcom/mastercard/terminalsdk/internal/Q;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:[B

.field private c:[B

.field private d:[B


# direct methods
.method public constructor <init>([B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    array-length v2, p1

    if-lt v2, v1, :cond_1

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/Q;->b:[B

    array-length v2, p1

    if-le v2, v1, :cond_0

    array-length v2, p1

    sub-int/2addr v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/mastercard/terminalsdk/internal/Q;->c:[B

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-array v2, v0, [B

    iput-object v2, p0, Lcom/mastercard/terminalsdk/internal/Q;->c:[B

    :goto_0
    new-array v2, v1, [B

    array-length v3, p1

    sub-int/2addr v3, v1

    aget-byte v1, p1, v3

    aput-byte v1, v2, v0

    array-length v0, p1

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    aget-byte p1, p1, v0

    aput-byte p1, v2, v3

    iput-object v2, p0, Lcom/mastercard/terminalsdk/internal/Q;->d:[B

    and-int/lit16 v0, v1, 0xff

    const/16 v1, 0x90

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    iput-boolean v3, p0, Lcom/mastercard/terminalsdk/internal/Q;->a:Z

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lcom/mastercard/terminalsdk/internal/Q;->a:Z

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/Q;->c:[B

    new-array p1, v1, [B

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/Q;->d:[B

    new-array p1, v1, [B

    iput-object p1, p0, Lcom/mastercard/terminalsdk/internal/Q;->b:[B

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public final b()S
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/Q;->d:[B

    invoke-static {v0}, Lcom/mastercard/terminalsdk/utility/ByteUtility;->byteArrayToShort([B)S

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/mastercard/terminalsdk/internal/Q;->a:Z

    return v0
.end method

.method public final d()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/Q;->d:[B

    return-object v0
.end method

.method public final e()[B
    .locals 1

    iget-object v0, p0, Lcom/mastercard/terminalsdk/internal/Q;->c:[B

    return-object v0
.end method
