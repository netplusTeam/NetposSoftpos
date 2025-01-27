.class Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;
.super Lcom/itextpdf/io/source/GroupedRandomAccessSource;
.source "PagedChannelRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_OPEN_BUFFERS:I = 0x10

.field public static final DEFAULT_TOTAL_BUFSIZE:I = 0x4000000

.field private static final serialVersionUID:J = 0x3ba40e0bd003d61aL


# instance fields
.field private final bufferSize:I

.field private final channel:Ljava/nio/channels/FileChannel;

.field private final mru:Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU<",
            "Lcom/itextpdf/io/source/IRandomAccessSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/nio/channels/FileChannel;)V
    .locals 2
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    const/high16 v0, 0x4000000

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;-><init>(Ljava/nio/channels/FileChannel;II)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/nio/channels/FileChannel;II)V
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/FileChannel;
    .param p2, "totalBufferSize"    # I
    .param p3, "maxOpenBuffers"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    div-int v0, p2, p3

    invoke-static {p1, v0}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->buildSources(Ljava/nio/channels/FileChannel;I)[Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;-><init>([Lcom/itextpdf/io/source/IRandomAccessSource;)V

    .line 105
    iput-object p1, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    .line 106
    div-int v0, p2, p3

    iput v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->bufferSize:I

    .line 107
    new-instance v0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;

    invoke-direct {v0, p3}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->mru:Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;

    .line 108
    return-void
.end method

.method private static buildSources(Ljava/nio/channels/FileChannel;I)[Lcom/itextpdf/io/source/IRandomAccessSource;
    .locals 17
    .param p0, "channel"    # Ljava/nio/channels/FileChannel;
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    move/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    .line 119
    .local v1, "size":J
    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    .line 122
    int-to-long v5, v0

    div-long v5, v1, v5

    long-to-int v5, v5

    int-to-long v6, v0

    rem-long v6, v1, v6

    cmp-long v3, v6, v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    add-int/2addr v5, v3

    .line 124
    .local v5, "bufferCount":I
    new-array v3, v5, [Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;

    .line 125
    .local v3, "sources":[Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v5, :cond_1

    .line 126
    int-to-long v6, v4

    int-to-long v8, v0

    mul-long/2addr v6, v8

    .line 127
    .local v6, "pageOffset":J
    sub-long v8, v1, v6

    int-to-long v10, v0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 128
    .local v8, "pageLength":J
    new-instance v16, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;

    move-object/from16 v10, v16

    move-object/from16 v11, p0

    move-wide v12, v6

    move-wide v14, v8

    invoke-direct/range {v10 .. v15}, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;-><init>(Ljava/nio/channels/FileChannel;JJ)V

    aput-object v16, v3, v4

    .line 125
    .end local v6    # "pageOffset":J
    .end local v8    # "pageLength":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 130
    .end local v4    # "i":I
    :cond_1
    return-object v3

    .line 120
    .end local v3    # "sources":[Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;
    .end local v5    # "bufferCount":I
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "File size must be greater than zero"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    new-instance v0, Ljava/io/NotSerializableException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 168
    const-string v0, "Closing of the file channel this source is based on failed."

    const-class v1, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;

    :try_start_0
    invoke-super {p0}, Lcom/itextpdf/io/source/GroupedRandomAccessSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :try_start_1
    iget-object v2, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    goto :goto_0

    .line 172
    :catch_0
    move-exception v2

    .line 173
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 174
    .local v1, "logger":Lorg/slf4j/Logger;
    invoke-interface {v1, v0, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .end local v2    # "ex":Ljava/lang/Exception;
    nop

    .line 177
    :goto_0
    return-void

    .line 170
    :catchall_0
    move-exception v2

    .line 171
    :try_start_2
    iget-object v3, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->channel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 175
    goto :goto_1

    .line 172
    :catch_1
    move-exception v3

    .line 173
    .local v3, "ex":Ljava/lang/Exception;
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 174
    .restart local v1    # "logger":Lorg/slf4j/Logger;
    invoke-interface {v1, v0, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .end local v1    # "logger":Lorg/slf4j/Logger;
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_1
    throw v2
.end method

.method protected getStartingSourceIndex(J)I
    .locals 2
    .param p1, "offset"    # J

    .line 138
    iget v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->bufferSize:I

    int-to-long v0, v0

    div-long v0, p1, v0

    long-to-int v0, v0

    return v0
.end method

.method protected sourceInUse(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 1
    .param p1, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    move-object v0, p1

    check-cast v0, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/MappedChannelRandomAccessSource;->open()V

    .line 159
    return-void
.end method

.method protected sourceReleased(Lcom/itextpdf/io/source/IRandomAccessSource;)V
    .locals 1
    .param p1, "source"    # Lcom/itextpdf/io/source/IRandomAccessSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource;->mru:Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/source/PagedChannelRandomAccessSource$MRU;->enqueue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/io/source/IRandomAccessSource;

    .line 148
    .local v0, "old":Lcom/itextpdf/io/source/IRandomAccessSource;
    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/itextpdf/io/source/IRandomAccessSource;->close()V

    .line 150
    :cond_0
    return-void
.end method
