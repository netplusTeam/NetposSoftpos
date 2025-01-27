.class public final Lcom/google/common/io/CharStreams;
.super Ljava/lang/Object;
.source "CharStreams.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/CharStreams$NullWriter;
    }
.end annotation


# static fields
.field private static final DEFAULT_BUF_SIZE:I = 0x800


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;
    .locals 1
    .param p0, "target"    # Ljava/lang/Appendable;

    .line 351
    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 352
    move-object v0, p0

    check-cast v0, Ljava/io/Writer;

    return-object v0

    .line 354
    :cond_0
    new-instance v0, Lcom/google/common/io/AppendableWriter;

    invoke-direct {v0, p0}, Lcom/google/common/io/AppendableWriter;-><init>(Ljava/lang/Appendable;)V

    return-object v0
.end method

.method public static copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    .locals 5
    .param p0, "from"    # Ljava/lang/Readable;
    .param p1, "to"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    instance-of v0, p0, Ljava/io/Reader;

    if-eqz v0, :cond_1

    .line 77
    instance-of v0, p1, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 78
    move-object v0, p0

    check-cast v0, Ljava/io/Reader;

    move-object v1, p1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/google/common/io/CharStreams;->copyReaderToBuilder(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    move-result-wide v0

    return-wide v0

    .line 80
    :cond_0
    move-object v0, p0

    check-cast v0, Ljava/io/Reader;

    invoke-static {p1}, Lcom/google/common/io/CharStreams;->asWriter(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/io/CharStreams;->copyReaderToWriter(Ljava/io/Reader;Ljava/io/Writer;)J

    move-result-wide v0

    return-wide v0

    .line 84
    :cond_1
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-wide/16 v0, 0x0

    .line 87
    .local v0, "total":J
    invoke-static {}, Lcom/google/common/io/CharStreams;->createBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    .line 88
    .local v2, "buf":Ljava/nio/CharBuffer;
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 89
    invoke-static {v2}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    .line 90
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 91
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->remaining()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v0, v3

    .line 92
    invoke-static {v2}, Lcom/google/common/io/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 94
    :cond_2
    return-wide v0
.end method

.method static copyReaderToBuilder(Ljava/io/Reader;Ljava/lang/StringBuilder;)J
    .locals 7
    .param p0, "from"    # Ljava/io/Reader;
    .param p1, "to"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/16 v0, 0x800

    new-array v0, v0, [C

    .line 121
    .local v0, "buf":[C
    const-wide/16 v1, 0x0

    .line 122
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 123
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 124
    int-to-long v5, v4

    add-long/2addr v1, v5

    goto :goto_0

    .line 126
    :cond_0
    return-wide v1
.end method

.method static copyReaderToWriter(Ljava/io/Reader;Ljava/io/Writer;)J
    .locals 7
    .param p0, "from"    # Ljava/io/Reader;
    .param p1, "to"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const/16 v0, 0x800

    new-array v0, v0, [C

    .line 149
    .local v0, "buf":[C
    const-wide/16 v1, 0x0

    .line 150
    .local v1, "total":J
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .local v4, "nRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    .line 151
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/Writer;->write([CII)V

    .line 152
    int-to-long v5, v4

    add-long/2addr v1, v5

    goto :goto_0

    .line 154
    :cond_0
    return-wide v1
.end method

.method static createBuffer()Ljava/nio/CharBuffer;
    .locals 1

    .line 57
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static exhaust(Ljava/lang/Readable;)J
    .locals 9
    .param p0, "readable"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 245
    const-wide/16 v0, 0x0

    .line 247
    .local v0, "total":J
    invoke-static {}, Lcom/google/common/io/CharStreams;->createBuffer()Ljava/nio/CharBuffer;

    move-result-object v2

    .line 248
    .local v2, "buf":Ljava/nio/CharBuffer;
    :goto_0
    invoke-interface {p0, v2}, Ljava/lang/Readable;->read(Ljava/nio/CharBuffer;)I

    move-result v3

    int-to-long v3, v3

    move-wide v5, v3

    .local v5, "read":J
    const-wide/16 v7, -0x1

    cmp-long v3, v3, v7

    if-eqz v3, :cond_0

    .line 249
    add-long/2addr v0, v5

    .line 250
    invoke-static {v2}, Lcom/google/common/io/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    goto :goto_0

    .line 252
    :cond_0
    return-wide v0
.end method

.method public static nullWriter()Ljava/io/Writer;
    .locals 1

    .line 283
    invoke-static {}, Lcom/google/common/io/CharStreams$NullWriter;->access$000()Lcom/google/common/io/CharStreams$NullWriter;

    move-result-object v0

    return-object v0
.end method

.method public static readLines(Ljava/lang/Readable;Lcom/google/common/io/LineProcessor;)Ljava/lang/Object;
    .locals 3
    .param p0, "readable"    # Ljava/lang/Readable;
    .annotation runtime Lcom/google/common/io/ParametricNullness;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Readable;",
            "Lcom/google/common/io/LineProcessor<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 223
    .local p1, "processor":Lcom/google/common/io/LineProcessor;, "Lcom/google/common/io/LineProcessor<TT;>;"
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    new-instance v0, Lcom/google/common/io/LineReader;

    invoke-direct {v0, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 228
    .local v0, "lineReader":Lcom/google/common/io/LineReader;
    :cond_0
    invoke-virtual {v0}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 229
    invoke-interface {p1, v2}, Lcom/google/common/io/LineProcessor;->processLine(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    :cond_1
    invoke-interface {p1}, Lcom/google/common/io/LineProcessor;->getResult()Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static readLines(Ljava/lang/Readable;)Ljava/util/List;
    .locals 4
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Readable;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Lcom/google/common/io/LineReader;

    invoke-direct {v1, p0}, Lcom/google/common/io/LineReader;-><init>(Ljava/lang/Readable;)V

    .line 203
    .local v1, "lineReader":Lcom/google/common/io/LineReader;
    :goto_0
    invoke-virtual {v1}, Lcom/google/common/io/LineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 204
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 206
    :cond_0
    return-object v0
.end method

.method public static skipFully(Ljava/io/Reader;J)V
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 268
    invoke-virtual {p0, p1, p2}, Ljava/io/Reader;->skip(J)J

    move-result-wide v2

    .line 269
    .local v2, "amt":J
    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    .line 272
    sub-long/2addr p1, v2

    .line 273
    .end local v2    # "amt":J
    goto :goto_0

    .line 270
    .restart local v2    # "amt":J
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 274
    .end local v2    # "amt":J
    :cond_1
    return-void
.end method

.method public static toString(Ljava/lang/Readable;)Ljava/lang/String;
    .locals 1
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    invoke-static {p0}, Lcom/google/common/io/CharStreams;->toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toStringBuilder(Ljava/lang/Readable;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "r"    # Ljava/lang/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Ljava/io/Reader;

    if-eqz v1, :cond_0

    .line 180
    move-object v1, p0

    check-cast v1, Ljava/io/Reader;

    invoke-static {v1, v0}, Lcom/google/common/io/CharStreams;->copyReaderToBuilder(Ljava/io/Reader;Ljava/lang/StringBuilder;)J

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p0, v0}, Lcom/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J

    .line 184
    :goto_0
    return-object v0
.end method
