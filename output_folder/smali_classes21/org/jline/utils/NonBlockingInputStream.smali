.class public abstract Lorg/jline/utils/NonBlockingInputStream;
.super Ljava/io/InputStream;
.source "NonBlockingInputStream.java"


# static fields
.field public static final EOF:I = -0x1

.field public static final READ_EXPIRED:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public peek(J)I
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/utils/NonBlockingInputStream;->read(JZ)I

    move-result v0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/utils/NonBlockingInputStream;->read(JZ)I

    move-result v0

    return v0
.end method

.method public read(J)I
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/utils/NonBlockingInputStream;->read(JZ)I

    move-result v0

    return v0
.end method

.method public abstract read(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    if-eqz p1, :cond_3

    .line 68
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 70
    if-nez p3, :cond_0

    .line 71
    const/4 v0, 0x0

    return v0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lorg/jline/utils/NonBlockingInputStream;->read()I

    move-result v0

    .line 74
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 75
    return v1

    .line 77
    :cond_1
    int-to-byte v1, v0

    aput-byte v1, p1, p2

    .line 78
    const/4 v1, 0x1

    return v1

    .line 69
    .end local v0    # "c":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 67
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public readBuffered([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-eqz p1, :cond_1

    .line 84
    array-length v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 85
    return v1

    .line 87
    :cond_0
    array-length v0, p1

    invoke-super {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public shutdown()V
    .locals 0

    .line 97
    return-void
.end method
