.class public Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
.super Ljava/lang/Object;
.source "MemoryLimitsAwareHandler.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final SINGLE_DECOMPRESSED_PDF_STREAM_MIN_SIZE:I = 0x147ae14

.field private static final SINGLE_SCALE_COEFFICIENT:I = 0x64

.field private static final SUM_OF_DECOMPRESSED_PDF_STREAMW_MIN_SIZE:J = 0x6666666L

.field private static final SUM_SCALE_COEFFICIENT:I = 0x1f4

.field private static final serialVersionUID:J = 0x22ae65866e819b2fL


# instance fields
.field private allMemoryUsedForDecompression:J

.field considerCurrentPdfStream:Z

.field private maxSizeOfDecompressedPdfStreamsSum:J

.field private maxSizeOfSingleDecompressedPdfStream:I

.field private memoryUsedForCurrentPdfStreamDecompression:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    .line 73
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    .line 82
    const v0, 0x147ae14

    iput v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    .line 83
    const-wide/32 v0, 0x6666666

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    .line 84
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3
    .param p1, "documentSize"    # J

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    .line 73
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    .line 93
    const/16 v0, 0x64

    const-wide/32 v1, 0x147ae14

    invoke-static {p1, p2, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->calculateDefaultParameter(JIJ)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    .line 95
    const/16 v0, 0x1f4

    const-wide/32 v1, 0x6666666

    invoke-static {p1, p2, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->calculateDefaultParameter(JIJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    .line 97
    return-void
.end method

.method private static calculateDefaultParameter(JIJ)J
    .locals 4
    .param p0, "documentSize"    # J
    .param p2, "scale"    # I
    .param p3, "min"    # J

    .line 224
    int-to-long v0, p2

    mul-long/2addr v0, p0

    .line 225
    .local v0, "result":J
    cmp-long v2, v0, p3

    if-gez v2, :cond_0

    .line 226
    move-wide v0, p3

    .line 228
    :cond_0
    int-to-long v2, p2

    mul-long/2addr v2, p3

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 229
    int-to-long v2, p2

    mul-long v0, p3, v2

    .line 231
    :cond_1
    return-wide v0
.end method

.method private ensureCurrentStreamIsReset()V
    .locals 2

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    .line 236
    return-void
.end method


# virtual methods
.method beginDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 1

    .line 196
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->ensureCurrentStreamIsReset()V

    .line 197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    .line 198
    return-object p0
.end method

.method considerBytesOccupiedByDecompressedPdfStream(J)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 2
    .param p1, "numOfOccupiedBytes"    # J

    .line 180
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 181
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    .line 182
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;

    const-string v1, "During decompression a single stream occupied more memory than allowed. Please either check your pdf or increase the allowed multiple decompressed pdf streams maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_1
    :goto_0
    return-object p0
.end method

.method endDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 4

    .line 209
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    iget-wide v2, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    .line 210
    iget-wide v2, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 214
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->ensureCurrentStreamIsReset()V

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    .line 216
    return-object p0

    .line 211
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;

    const-string v1, "During decompression multiple streams in sum occupied more memory than allowed. Please either check your pdf or increase the allowed single decompressed pdf stream maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAllMemoryUsedForDecompression()J
    .locals 2

    .line 220
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    return-wide v0
.end method

.method public getMaxSizeOfDecompressedPdfStreamsSum()J
    .locals 2

    .line 131
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    return-wide v0
.end method

.method public getMaxSizeOfSingleDecompressedPdfStream()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    return v0
.end method

.method public isMemoryLimitsAwarenessRequiredOnDecompression(Lcom/itextpdf/kernel/pdf/PdfArray;)Z
    .locals 4
    .param p1, "filters"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 161
    .local v0, "filterSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/itextpdf/kernel/pdf/PdfName;>;"
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 162
    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 163
    .local v2, "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 164
    const/4 v3, 0x1

    return v3

    .line 161
    .end local v2    # "filterName":Lcom/itextpdf/kernel/pdf/PdfName;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    .end local v1    # "index":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setMaxSizeOfDecompressedPdfStreamsSum(J)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 0
    .param p1, "maxSizeOfDecompressedPdfStreamsSum"    # J

    .line 148
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    .line 149
    return-object p0
.end method

.method public setMaxSizeOfSingleDecompressedPdfStream(I)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 0
    .param p1, "maxSizeOfSingleDecompressedPdfStream"    # I

    .line 121
    iput p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    .line 122
    return-object p0
.end method
