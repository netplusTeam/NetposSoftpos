.class Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;
.super Ljava/lang/Object;
.source "HistogramLogScanner.java"

# interfaces
.implements Lorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/HdrHistogram/HistogramLogScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LazyHistogramReader"
.end annotation


# instance fields
.field private gotIt:Z

.field private final scanner:Ljava/util/Scanner;


# direct methods
.method private constructor <init>(Ljava/util/Scanner;)V
    .locals 1
    .param p1, "scanner"    # Ljava/util/Scanner;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->gotIt:Z

    .line 52
    iput-object p1, p0, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->scanner:Ljava/util/Scanner;

    .line 53
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Scanner;Lorg/HdrHistogram/HistogramLogScanner$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/Scanner;
    .param p2, "x1"    # Lorg/HdrHistogram/HistogramLogScanner$1;

    .line 45
    invoke-direct {p0, p1}, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;-><init>(Ljava/util/Scanner;)V

    return-void
.end method

.method static synthetic access$100(Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;)V
    .locals 0
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;

    .line 45
    invoke-direct {p0}, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->allowGet()V

    return-void
.end method

.method private allowGet()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->gotIt:Z

    .line 58
    return-void
.end method


# virtual methods
.method public read()Lorg/HdrHistogram/EncodableHistogram;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/DataFormatException;
        }
    .end annotation

    .line 64
    iget-boolean v0, p0, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->gotIt:Z

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->gotIt:Z

    .line 69
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "compressedPayloadString":Ljava/lang/String;
    invoke-static {v0}, Lorg/HdrHistogram/Base64Helper;->parseBase64Binary(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 72
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lorg/HdrHistogram/EncodableHistogram;->decodeFromCompressedByteBuffer(Ljava/nio/ByteBuffer;J)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v2

    .line 74
    .local v2, "histogram":Lorg/HdrHistogram/EncodableHistogram;
    return-object v2

    .line 65
    .end local v0    # "compressedPayloadString":Ljava/lang/String;
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "histogram":Lorg/HdrHistogram/EncodableHistogram;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
