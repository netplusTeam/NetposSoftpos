.class public Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;
.super Ljava/util/zip/Adler32;
.source "Adler32.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/Adler32;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChunkingAdler32"
.end annotation


# instance fields
.field adler32ChunkSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "adler32ChunkSize"    # I

    .line 65
    invoke-direct {p0}, Ljava/util/zip/Adler32;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;->adler32ChunkSize:I

    .line 66
    iput p1, p0, Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;->adler32ChunkSize:I

    .line 67
    return-void
.end method


# virtual methods
.method public update([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 71
    iget v0, p0, Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;->adler32ChunkSize:I

    if-ge p3, v0, :cond_0

    .line 72
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    .line 73
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_1

    .line 78
    sub-int v1, p3, v0

    .line 79
    .local v1, "bytesRemaining":I
    iget v2, p0, Lcom/sleepycat/je/utilint/Adler32$ChunkingAdler32;->adler32ChunkSize:I

    .line 80
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 81
    .local v2, "nBytesThisChunk":I
    add-int v3, p2, v0

    invoke-super {p0, p1, v3, v2}, Ljava/util/zip/Adler32;->update([BII)V

    .line 82
    add-int/2addr v0, v2

    .line 83
    .end local v1    # "bytesRemaining":I
    .end local v2    # "nBytesThisChunk":I
    goto :goto_0

    .line 84
    :cond_1
    return-void
.end method
