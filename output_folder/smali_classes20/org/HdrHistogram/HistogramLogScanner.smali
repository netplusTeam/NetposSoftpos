.class public Lorg/HdrHistogram/HistogramLogScanner;
.super Ljava/lang/Object;
.source "HistogramLogScanner.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;,
        Lorg/HdrHistogram/HistogramLogScanner$EventHandler;,
        Lorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;
    }
.end annotation


# instance fields
.field private final lazyReader:Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;

.field protected final scanner:Ljava/util/Scanner;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "inputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/HdrHistogram/HistogramLogScanner;-><init>(Ljava/util/Scanner;)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 98
    new-instance v0, Ljava/util/Scanner;

    invoke-direct {v0, p1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lorg/HdrHistogram/HistogramLogScanner;-><init>(Ljava/util/Scanner;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "inputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/Scanner;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/HdrHistogram/HistogramLogScanner;-><init>(Ljava/util/Scanner;)V

    .line 88
    return-void
.end method

.method private constructor <init>(Ljava/util/Scanner;)V
    .locals 2
    .param p1, "scanner"    # Ljava/util/Scanner;

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    .line 113
    new-instance v0, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;-><init>(Ljava/util/Scanner;Lorg/HdrHistogram/HistogramLogScanner$1;)V

    iput-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->lazyReader:Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;

    .line 114
    invoke-direct {p0}, Lorg/HdrHistogram/HistogramLogScanner;->initScanner()V

    .line 115
    return-void
.end method

.method private initScanner()V
    .locals 2

    .line 118
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useLocale(Ljava/util/Locale;)Ljava/util/Scanner;

    .line 119
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    const-string v1, "[ ,\\r\\n]"

    invoke-virtual {v0, v1}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    .line 120
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->close()V

    .line 129
    return-void
.end method

.method public hasNextLine()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    return v0
.end method

.method public process(Lorg/HdrHistogram/HistogramLogScanner$EventHandler;)V
    .locals 12
    .param p1, "handler"    # Lorg/HdrHistogram/HistogramLogScanner$EventHandler;

    .line 132
    const-string v0, "#\\[BaseTime:"

    const-string v1, "Tag\\=.*"

    const-string v2, "#\\[StartTime:"

    const-string v3, "\\#.*"

    :goto_0
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 134
    :try_start_0
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4, v3}, Ljava/util/Scanner;->hasNext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4, v2}, Ljava/util/Scanner;->hasNext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 138
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4, v2}, Ljava/util/Scanner;->next(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextDouble()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 140
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4}, Ljava/util/Scanner;->nextDouble()D

    move-result-wide v4

    .line 141
    .local v4, "startTimeSec":D
    invoke-interface {p1, v4, v5}, Lorg/HdrHistogram/HistogramLogScanner$EventHandler;->onStartTime(D)Z

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    .line 185
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 142
    return-void

    .line 144
    .end local v4    # "startTimeSec":D
    :cond_0
    goto :goto_1

    .line 145
    :cond_1
    :try_start_1
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4, v0}, Ljava/util/Scanner;->hasNext(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4, v0}, Ljava/util/Scanner;->next(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4}, Ljava/util/Scanner;->hasNextDouble()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 148
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4}, Ljava/util/Scanner;->nextDouble()D

    move-result-wide v4

    .line 149
    .local v4, "baseTimeSec":D
    invoke-interface {p1, v4, v5}, Lorg/HdrHistogram/HistogramLogScanner$EventHandler;->onBaseTime(D)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    .line 185
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 151
    return-void

    .line 153
    .end local v4    # "baseTimeSec":D
    :cond_2
    goto :goto_1

    .line 154
    :cond_3
    :try_start_2
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4, v3}, Ljava/util/Scanner;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/HdrHistogram/HistogramLogScanner$EventHandler;->onComment(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_5

    .line 185
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 155
    return-void

    .line 160
    :cond_4
    :try_start_3
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    const-string v5, "\"StartTimestamp\".*"

    invoke-virtual {v4, v5}, Ljava/util/Scanner;->hasNext(Ljava/lang/String;)Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_6

    .line 185
    :cond_5
    :goto_1
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    goto/16 :goto_0

    .line 165
    :cond_6
    const/4 v4, 0x0

    .line 166
    .local v4, "tagString":Ljava/lang/String;
    :try_start_4
    iget-object v5, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v5, v1}, Ljava/util/Scanner;->hasNext(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 167
    iget-object v5, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v5, v1}, Ljava/util/Scanner;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 171
    :cond_7
    iget-object v5, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v5}, Ljava/util/Scanner;->nextDouble()D

    move-result-wide v7

    .line 172
    .local v7, "logTimeStampInSec":D
    iget-object v5, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v5}, Ljava/util/Scanner;->nextDouble()D

    move-result-wide v9

    .line 173
    .local v9, "intervalLengthSec":D
    iget-object v5, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v5}, Ljava/util/Scanner;->nextDouble()D

    .line 175
    iget-object v5, p0, Lorg/HdrHistogram/HistogramLogScanner;->lazyReader:Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;

    invoke-static {v5}, Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;->access$100(Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;)V

    .line 176
    iget-object v11, p0, Lorg/HdrHistogram/HistogramLogScanner;->lazyReader:Lorg/HdrHistogram/HistogramLogScanner$LazyHistogramReader;

    move-object v5, p1

    move-object v6, v4

    invoke-interface/range {v5 .. v11}, Lorg/HdrHistogram/HistogramLogScanner$EventHandler;->onHistogram(Ljava/lang/String;DDLorg/HdrHistogram/HistogramLogScanner$EncodableHistogramSupplier;)Z

    move-result v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v5, :cond_8

    .line 185
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 177
    return-void

    .line 176
    .end local v4    # "tagString":Ljava/lang/String;
    .end local v7    # "logTimeStampInSec":D
    .end local v9    # "intervalLengthSec":D
    :cond_8
    goto :goto_2

    .line 180
    :catchall_0
    move-exception v4

    .line 181
    .local v4, "ex":Ljava/lang/Throwable;
    :try_start_5
    invoke-interface {p1, v4}, Lorg/HdrHistogram/HistogramLogScanner$EventHandler;->onException(Ljava/lang/Throwable;)Z

    move-result v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v5, :cond_9

    .line 185
    iget-object v0, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 182
    return-void

    .line 185
    .end local v4    # "ex":Ljava/lang/Throwable;
    :cond_9
    :goto_2
    iget-object v4, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 186
    goto/16 :goto_0

    .line 185
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/HdrHistogram/HistogramLogScanner;->scanner:Ljava/util/Scanner;

    invoke-virtual {v1}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    .line 186
    throw v0

    .line 188
    :cond_a
    return-void
.end method
