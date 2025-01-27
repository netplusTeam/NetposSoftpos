.class Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "MemoryLimitsAwareOutputStream.java"


# static fields
.field private static final DEFAULT_MAX_STREAM_SIZE:I = 0x7ffffff7


# instance fields
.field private maxStreamSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 65
    const v0, 0x7ffffff7

    iput v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    .line 73
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "size"    # I

    .line 83
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 65
    const v0, 0x7ffffff7

    iput v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    .line 84
    return-void
.end method


# virtual methods
.method public getMaxStreamSize()J
    .locals 2

    .line 92
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public setMaxStreamSize(I)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;
    .locals 0
    .param p1, "maxStreamSize"    # I

    .line 102
    iput p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    .line 103
    return-object p0
.end method

.method public declared-synchronized write([BII)V
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    monitor-enter p0

    .line 112
    if-ltz p2, :cond_5

    :try_start_0
    array-length v0, p1

    if-gt p2, v0, :cond_5

    if-ltz p3, :cond_5

    add-int v0, p2, p3

    array-length v1, p1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_5

    .line 117
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->count:I

    add-int/2addr v0, p3

    .line 118
    .local v0, "minCapacity":I
    if-ltz v0, :cond_4

    .line 122
    iget v1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    if-gt v0, v1, :cond_3

    .line 127
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->buf:[B

    array-length v1, v1

    .line 128
    .local v1, "oldCapacity":I
    shl-int/lit8 v2, v1, 0x1

    .line 129
    .local v2, "newCapacity":I
    if-ltz v2, :cond_0

    sub-int v3, v2, v0

    if-gez v3, :cond_1

    .line 131
    :cond_0
    move v2, v0

    .line 134
    :cond_1
    iget v3, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->maxStreamSize:I

    sub-int v4, v2, v3

    if-lez v4, :cond_2

    .line 135
    move v2, v3

    .line 136
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->buf:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;->buf:[B

    .line 138
    .end local p0    # "this":Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareOutputStream;
    :cond_2
    invoke-super {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    .line 123
    .end local v1    # "oldCapacity":I
    .end local v2    # "newCapacity":I
    :cond_3
    :try_start_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;

    const-string v2, "During decompression a single stream occupied more memory than allowed. Please either check your pdf or increase the allowed multiple decompressed pdf streams maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_4
    new-instance v1, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;

    const-string v2, "During decompression a single stream occupied more than a maximum integer value. Please check your pdf."

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "minCapacity":I
    :cond_5
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    .end local p1    # "b":[B
    .end local p2    # "off":I
    .end local p3    # "len":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
