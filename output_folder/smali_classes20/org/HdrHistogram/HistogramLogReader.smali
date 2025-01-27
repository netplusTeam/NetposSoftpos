.class public Lorg/HdrHistogram/HistogramLogReader;
.super Ljava/lang/Object;
.source "HistogramLogReader.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private absolute:Z

.field private baseTimeSec:D

.field private final handler:Lorg/HdrHistogram/HistogramLogScanner$EventHandler;

.field private nextHistogram:Lorg/HdrHistogram/EncodableHistogram;

.field private observedBaseTime:Z

.field private observedStartTime:Z

.field private rangeEndTimeSec:D

.field private rangeStartTimeSec:D

.field private final scanner:Lorg/HdrHistogram/HistogramLogScanner;

.field private startTimeSec:D


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/HdrHistogram/HistogramLogReader$1;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/HistogramLogReader$1;-><init>(Lorg/HdrHistogram/HistogramLogReader;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->handler:Lorg/HdrHistogram/HistogramLogScanner$EventHandler;

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->startTimeSec:D

    .line 153
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/HdrHistogram/HistogramLogReader;->observedStartTime:Z

    .line 154
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->baseTimeSec:D

    .line 155
    iput-boolean v2, p0, Lorg/HdrHistogram/HistogramLogReader;->observedBaseTime:Z

    .line 186
    new-instance v0, Lorg/HdrHistogram/HistogramLogScanner;

    invoke-direct {v0, p1}, Lorg/HdrHistogram/HistogramLogScanner;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->scanner:Lorg/HdrHistogram/HistogramLogScanner;

    .line 187
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/HdrHistogram/HistogramLogReader$1;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/HistogramLogReader$1;-><init>(Lorg/HdrHistogram/HistogramLogReader;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->handler:Lorg/HdrHistogram/HistogramLogScanner$EventHandler;

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->startTimeSec:D

    .line 153
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/HdrHistogram/HistogramLogReader;->observedStartTime:Z

    .line 154
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->baseTimeSec:D

    .line 155
    iput-boolean v2, p0, Lorg/HdrHistogram/HistogramLogReader;->observedBaseTime:Z

    .line 177
    new-instance v0, Lorg/HdrHistogram/HistogramLogScanner;

    invoke-direct {v0, p1}, Lorg/HdrHistogram/HistogramLogScanner;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->scanner:Lorg/HdrHistogram/HistogramLogScanner;

    .line 178
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "inputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lorg/HdrHistogram/HistogramLogReader$1;

    invoke-direct {v0, p0}, Lorg/HdrHistogram/HistogramLogReader$1;-><init>(Lorg/HdrHistogram/HistogramLogReader;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->handler:Lorg/HdrHistogram/HistogramLogScanner$EventHandler;

    .line 152
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->startTimeSec:D

    .line 153
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/HdrHistogram/HistogramLogReader;->observedStartTime:Z

    .line 154
    iput-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->baseTimeSec:D

    .line 155
    iput-boolean v2, p0, Lorg/HdrHistogram/HistogramLogReader;->observedBaseTime:Z

    .line 169
    new-instance v0, Lorg/HdrHistogram/HistogramLogScanner;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/HdrHistogram/HistogramLogScanner;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->scanner:Lorg/HdrHistogram/HistogramLogScanner;

    .line 170
    return-void
.end method

.method static synthetic access$000(Lorg/HdrHistogram/HistogramLogReader;)D
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 54
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->baseTimeSec:D

    return-wide v0
.end method

.method static synthetic access$002(Lorg/HdrHistogram/HistogramLogReader;D)D
    .locals 0
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;
    .param p1, "x1"    # D

    .line 54
    iput-wide p1, p0, Lorg/HdrHistogram/HistogramLogReader;->baseTimeSec:D

    return-wide p1
.end method

.method static synthetic access$100(Lorg/HdrHistogram/HistogramLogReader;)Z
    .locals 1
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 54
    iget-boolean v0, p0, Lorg/HdrHistogram/HistogramLogReader;->observedBaseTime:Z

    return v0
.end method

.method static synthetic access$102(Lorg/HdrHistogram/HistogramLogReader;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lorg/HdrHistogram/HistogramLogReader;->observedBaseTime:Z

    return p1
.end method

.method static synthetic access$200(Lorg/HdrHistogram/HistogramLogReader;)D
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 54
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->startTimeSec:D

    return-wide v0
.end method

.method static synthetic access$202(Lorg/HdrHistogram/HistogramLogReader;D)D
    .locals 0
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;
    .param p1, "x1"    # D

    .line 54
    iput-wide p1, p0, Lorg/HdrHistogram/HistogramLogReader;->startTimeSec:D

    return-wide p1
.end method

.method static synthetic access$300(Lorg/HdrHistogram/HistogramLogReader;)Z
    .locals 1
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 54
    iget-boolean v0, p0, Lorg/HdrHistogram/HistogramLogReader;->observedStartTime:Z

    return v0
.end method

.method static synthetic access$302(Lorg/HdrHistogram/HistogramLogReader;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lorg/HdrHistogram/HistogramLogReader;->observedStartTime:Z

    return p1
.end method

.method static synthetic access$400(Lorg/HdrHistogram/HistogramLogReader;)Z
    .locals 1
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 54
    iget-boolean v0, p0, Lorg/HdrHistogram/HistogramLogReader;->absolute:Z

    return v0
.end method

.method static synthetic access$500(Lorg/HdrHistogram/HistogramLogReader;)D
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 54
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->rangeStartTimeSec:D

    return-wide v0
.end method

.method static synthetic access$600(Lorg/HdrHistogram/HistogramLogReader;)D
    .locals 2
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;

    .line 54
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->rangeEndTimeSec:D

    return-wide v0
.end method

.method static synthetic access$702(Lorg/HdrHistogram/HistogramLogReader;Lorg/HdrHistogram/EncodableHistogram;)Lorg/HdrHistogram/EncodableHistogram;
    .locals 0
    .param p0, "x0"    # Lorg/HdrHistogram/HistogramLogReader;
    .param p1, "x1"    # Lorg/HdrHistogram/EncodableHistogram;

    .line 54
    iput-object p1, p0, Lorg/HdrHistogram/HistogramLogReader;->nextHistogram:Lorg/HdrHistogram/EncodableHistogram;

    return-object p1
.end method

.method private nextIntervalHistogram(DDZ)Lorg/HdrHistogram/EncodableHistogram;
    .locals 2
    .param p1, "rangeStartTimeSec"    # D
    .param p3, "rangeEndTimeSec"    # D
    .param p5, "absolute"    # Z

    .line 285
    iput-wide p1, p0, Lorg/HdrHistogram/HistogramLogReader;->rangeStartTimeSec:D

    .line 286
    iput-wide p3, p0, Lorg/HdrHistogram/HistogramLogReader;->rangeEndTimeSec:D

    .line 287
    iput-boolean p5, p0, Lorg/HdrHistogram/HistogramLogReader;->absolute:Z

    .line 288
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->scanner:Lorg/HdrHistogram/HistogramLogScanner;

    iget-object v1, p0, Lorg/HdrHistogram/HistogramLogReader;->handler:Lorg/HdrHistogram/HistogramLogScanner$EventHandler;

    invoke-virtual {v0, v1}, Lorg/HdrHistogram/HistogramLogScanner;->process(Lorg/HdrHistogram/HistogramLogScanner$EventHandler;)V

    .line 289
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->nextHistogram:Lorg/HdrHistogram/EncodableHistogram;

    .line 290
    .local v0, "histogram":Lorg/HdrHistogram/EncodableHistogram;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/HdrHistogram/HistogramLogReader;->nextHistogram:Lorg/HdrHistogram/EncodableHistogram;

    .line 291
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->scanner:Lorg/HdrHistogram/HistogramLogScanner;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramLogScanner;->close()V

    .line 306
    return-void
.end method

.method public getStartTimeSec()D
    .locals 2

    .line 198
    iget-wide v0, p0, Lorg/HdrHistogram/HistogramLogReader;->startTimeSec:D

    return-wide v0
.end method

.method public hasNext()Z
    .locals 1

    .line 299
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogReader;->scanner:Lorg/HdrHistogram/HistogramLogScanner;

    invoke-virtual {v0}, Lorg/HdrHistogram/HistogramLogScanner;->hasNextLine()Z

    move-result v0

    return v0
.end method

.method public nextAbsoluteIntervalHistogram(DD)Lorg/HdrHistogram/EncodableHistogram;
    .locals 6
    .param p1, "absoluteStartTimeSec"    # D
    .param p3, "absoluteEndTimeSec"    # D

    .line 267
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/HistogramLogReader;->nextIntervalHistogram(DDZ)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v0

    return-object v0
.end method

.method public nextIntervalHistogram()Lorg/HdrHistogram/EncodableHistogram;
    .locals 6

    .line 280
    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/HistogramLogReader;->nextIntervalHistogram(DDZ)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v0

    return-object v0
.end method

.method public nextIntervalHistogram(DD)Lorg/HdrHistogram/EncodableHistogram;
    .locals 6
    .param p1, "startTimeSec"    # D
    .param p3, "endTimeSec"    # D

    .line 231
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/HdrHistogram/HistogramLogReader;->nextIntervalHistogram(DDZ)Lorg/HdrHistogram/EncodableHistogram;

    move-result-object v0

    return-object v0
.end method
