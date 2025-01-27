.class public abstract Lorg/jline/utils/NonBlockingReader;
.super Ljava/io/Reader;
.source "NonBlockingReader.java"


# static fields
.field public static final EOF:I = -0x1

.field public static final READ_EXPIRED:I = -0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public peek(J)I
    .locals 1
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/utils/NonBlockingReader;->read(JZ)I

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

    .line 31
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/jline/utils/NonBlockingReader;->read(JZ)I

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

    .line 57
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jline/utils/NonBlockingReader;->read(JZ)I

    move-result v0

    return v0
.end method

.method protected abstract read(JZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([CII)I
    .locals 2
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    if-eqz p1, :cond_3

    .line 73
    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_2

    .line 75
    if-nez p3, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v0

    .line 81
    .local v0, "c":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 82
    return v1

    .line 84
    :cond_1
    int-to-char v1, v0

    aput-char v1, p1, p2

    .line 85
    const/4 v1, 0x1

    return v1

    .line 74
    .end local v0    # "c":I
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public abstract readBuffered([C)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public shutdown()V
    .locals 0

    .line 27
    return-void
.end method
