.class Lcom/itextpdf/io/source/ArrayRandomAccessSource;
.super Ljava/lang/Object;
.source "ArrayRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x75eb9e59ce751631L


# instance fields
.field private array:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2
    .param p1, "array"    # [B

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    if-eqz p1, :cond_0

    .line 59
    iput-object p1, p0, Lcom/itextpdf/io/source/ArrayRandomAccessSource;->array:[B

    .line 60
    return-void

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passed byte array can not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/source/ArrayRandomAccessSource;->array:[B

    .line 87
    return-void
.end method

.method public get(J)I
    .locals 3
    .param p1, "offset"    # J

    .line 63
    iget-object v0, p0, Lcom/itextpdf/io/source/ArrayRandomAccessSource;->array:[B

    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 64
    :cond_0
    long-to-int v1, p1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public get(J[BII)I
    .locals 5
    .param p1, "offset"    # J
    .param p3, "bytes"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I

    .line 68
    iget-object v0, p0, Lcom/itextpdf/io/source/ArrayRandomAccessSource;->array:[B

    if-eqz v0, :cond_2

    .line 70
    array-length v1, v0

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    .line 71
    const/4 v0, -0x1

    return v0

    .line 73
    :cond_0
    int-to-long v1, p5

    add-long/2addr v1, p1

    array-length v3, v0

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 74
    array-length v1, v0

    int-to-long v1, v1

    sub-long/2addr v1, p1

    long-to-int p5, v1

    .line 76
    :cond_1
    long-to-int v1, p1

    invoke-static {v0, v1, p3, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 78
    return p5

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public length()J
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/itextpdf/io/source/ArrayRandomAccessSource;->array:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
