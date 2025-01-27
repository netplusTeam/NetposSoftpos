.class Lcom/itextpdf/io/source/GroupedRandomAccessSource;
.super Ljava/lang/Object;
.source "GroupedRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f6bdfc94290d693L


# instance fields
.field private currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

.field private final size:J

.field private final sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;


# direct methods
.method public constructor <init>([Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 6
    .param p1, "sources"    # [Lcom/itextpdf/io/source/IRandomAccessSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    array-length v0, p1

    new-array v0, v0, [Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iput-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    .line 82
    const-wide/16 v0, 0x0

    .line 83
    .local v0, "totalSize":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 84
    iget-object v3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    new-instance v4, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    aget-object v5, p1, v2

    invoke-direct {v4, v2, v5, v0, v1}, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;-><init>(ILcom/itextpdf/io/source/IRandomAccessSource;J)V

    aput-object v4, v3, v2

    .line 85
    aget-object v3, p1, v2

    invoke-interface {v3}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    .end local v2    # "i":I
    :cond_0
    iput-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->size:J

    .line 88
    iget-object v2, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    .line 89
    iget-object v2, v2, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 90
    return-void
.end method

.method private getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    .locals 5
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    iget-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->size:J

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 119
    return-object v1

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-wide v2, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    cmp-long v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-wide v2, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->lastByte:J

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    return-object v0

    .line 125
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-object v0, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sourceReleased(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 127
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getStartingSourceIndex(J)I

    move-result v0

    .line 128
    .local v0, "startAt":I
    move v2, v0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    array-length v4, v3

    if-ge v2, v4, :cond_3

    .line 129
    aget-object v3, v3, v2

    iget-wide v3, v3, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    aget-object v3, v3, v2

    iget-wide v3, v3, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->lastByte:J

    cmp-long v3, p1, v3

    if-gtz v3, :cond_2

    .line 130
    iget-object v1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    .line 131
    iget-object v1, v1, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 132
    iget-object v1, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    return-object v1

    .line 128
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "i":I
    :cond_3
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    const-string v0, "Closing of one of the grouped sources failed."

    const-class v1, Lcom/itextpdf/io/source/GroupedRandomAccessSource;

    const/4 v2, 0x0

    .line 222
    .local v2, "firstThrownIOExc":Ljava/io/IOException;
    iget-object v3, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->sources:[Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 224
    .local v6, "entry":Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    :try_start_0
    iget-object v7, v6, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v7}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 232
    :catch_0
    move-exception v7

    .line 233
    .local v7, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v8

    .line 234
    .local v8, "logger":Lorg/slf4j/Logger;
    invoke-interface {v8, v0, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 225
    .end local v7    # "ex":Ljava/lang/Exception;
    .end local v8    # "logger":Lorg/slf4j/Logger;
    :catch_1
    move-exception v7

    .line 226
    .local v7, "ex":Ljava/io/IOException;
    if-nez v2, :cond_0

    .line 227
    move-object v2, v7

    goto :goto_1

    .line 229
    :cond_0
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v8

    .line 230
    .restart local v8    # "logger":Lorg/slf4j/Logger;
    invoke-interface {v8, v0, v7}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v8    # "logger":Lorg/slf4j/Logger;
    :goto_1
    nop

    .line 222
    .end local v6    # "entry":Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 237
    :cond_1
    if-nez v2, :cond_2

    .line 240
    return-void

    .line 238
    :cond_2
    throw v2
.end method

.method public get(J)I
    .locals 4
    .param p1, "position"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    move-result-object v0

    .line 165
    .local v0, "entry":Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    if-nez v0, :cond_0

    .line 166
    const/4 v1, -0x1

    return v1

    .line 168
    :cond_0
    iget-object v1, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->offsetN(J)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J)I

    move-result v1

    return v1
.end method

.method public get(J[BII)I
    .locals 15
    .param p1, "position"    # J
    .param p3, "bytes"    # [B
    .param p4, "off"    # I
    .param p5, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    move/from16 v0, p5

    invoke-direct/range {p0 .. p2}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    move-result-object v1

    .line 178
    .local v1, "entry":Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    const/4 v2, -0x1

    if-nez v1, :cond_0

    .line 179
    return v2

    .line 181
    :cond_0
    move-wide/from16 v3, p1

    invoke-virtual {v1, v3, v4}, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->offsetN(J)J

    move-result-wide v5

    .line 183
    .local v5, "offN":J
    move/from16 v7, p5

    move-object v11, v1

    move-wide v12, v5

    move v14, v7

    move/from16 v1, p4

    .line 185
    .end local v5    # "offN":J
    .end local p1    # "position":J
    .end local p4    # "off":I
    .local v1, "off":I
    .local v3, "position":J
    .local v11, "entry":Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;
    .local v12, "offN":J
    .local v14, "remaining":I
    :goto_0
    if-lez v14, :cond_4

    .line 188
    if-nez v11, :cond_1

    .line 189
    move-object v6, p0

    goto :goto_1

    .line 190
    :cond_1
    iget-object v5, v11, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    invoke-interface {v5}, Lcom/itextpdf/io/source/IRandomAccessSource;->length()J

    move-result-wide v5

    cmp-long v5, v12, v5

    if-lez v5, :cond_2

    .line 191
    move-object v6, p0

    goto :goto_1

    .line 193
    :cond_2
    iget-object v5, v11, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->source:Lcom/itextpdf/io/source/IRandomAccessSource;

    move-wide v6, v12

    move-object/from16 v8, p3

    move v9, v1

    move v10, v14

    invoke-interface/range {v5 .. v10}, Lcom/itextpdf/io/source/IRandomAccessSource;->get(J[BII)I

    move-result v5

    .line 194
    .local v5, "count":I
    if-ne v5, v2, :cond_3

    .line 195
    move-object v6, p0

    goto :goto_1

    .line 197
    :cond_3
    add-int/2addr v1, v5

    .line 198
    int-to-long v6, v5

    add-long/2addr v3, v6

    .line 199
    sub-int/2addr v14, v5

    .line 201
    const-wide/16 v12, 0x0

    .line 202
    move-object v6, p0

    invoke-direct {p0, v3, v4}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->getSourceEntryForOffset(J)Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    move-result-object v11

    .line 203
    .end local v5    # "count":I
    goto :goto_0

    .line 185
    :cond_4
    move-object v6, p0

    .line 204
    :goto_1
    if-ne v14, v0, :cond_5

    goto :goto_2

    :cond_5
    sub-int v2, v0, v14

    :goto_2
    return v2
.end method

.method protected getStartingSourceIndex(J)I
    .locals 2
    .param p1, "offset"    # J

    .line 103
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget-wide v0, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->firstByte:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->currentSourceEntry:Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;

    iget v0, v0, Lcom/itextpdf/io/source/GroupedRandomAccessSource$SourceEntry;->index:I

    return v0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public length()J
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->size:J

    return-wide v0
.end method

.method protected sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 0
    .param p1, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    return-void
.end method

.method protected sourceReleased(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 0
    .param p1, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    return-void
.end method
