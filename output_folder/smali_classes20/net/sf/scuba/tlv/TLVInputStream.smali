.class public Lnet/sf/scuba/tlv/TLVInputStream;
.super Ljava/io/InputStream;
.source "TLVInputStream.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final MAX_BUFFER_LENGTH:I = 0xffff


# instance fields
.field private bufferSize:I

.field private inputStream:Ljava/io/DataInputStream;

.field private markedState:Lnet/sf/scuba/tlv/TLVInputState;

.field private final originalInputStream:Ljava/io/InputStream;

.field private state:Lnet/sf/scuba/tlv/TLVInputState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-string v0, "net.sf.scuba"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lnet/sf/scuba/tlv/TLVInputStream;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 62
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->bufferSize:I

    .line 65
    :try_start_0
    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 66
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->bufferSize:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :cond_1
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, "ioe":Ljava/io/IOException;
    sget-object v1, Lnet/sf/scuba/tlv/TLVInputStream;->LOGGER:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Exception reading from stream"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .end local v0    # "ioe":Ljava/io/IOException;
    :goto_0
    iput-object p1, p0, Lnet/sf/scuba/tlv/TLVInputStream;->originalInputStream:Ljava/io/InputStream;

    .line 73
    instance-of v0, p1, Ljava/io/DataInputStream;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/io/DataInputStream;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_1
    iput-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    .line 74
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputState;

    invoke-direct {v0}, Lnet/sf/scuba/tlv/TLVInputState;-><init>()V

    iput-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->markedState:Lnet/sf/scuba/tlv/TLVInputState;

    .line 77
    return-void
.end method

.method private skipValue()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 196
    return-wide v1

    .line 198
    :cond_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    return-wide v1

    .line 201
    :cond_1
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->getValueBytesLeft()I

    move-result v0

    .line 202
    .local v0, "bytesLeft":I
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lnet/sf/scuba/tlv/TLVInputStream;->skip(J)J

    move-result-wide v1

    return-wide v1
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    .line 343
    return-void
.end method

.method public declared-synchronized mark(I)V
    .locals 2
    .param p1, "readLimit"    # I

    monitor-enter p0

    .line 305
    :try_start_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataInputStream;->mark(I)V

    .line 306
    new-instance v0, Lnet/sf/scuba/tlv/TLVInputState;

    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-direct {v0, v1}, Lnet/sf/scuba/tlv/TLVInputState;-><init>(Lnet/sf/scuba/tlv/TLVInputState;)V

    iput-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->markedState:Lnet/sf/scuba/tlv/TLVInputState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 304
    .end local p0    # "this":Lnet/sf/scuba/tlv/TLVInputStream;
    .end local p1    # "readLimit":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public markSupported()Z
    .locals 1

    .line 317
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->markSupported()Z

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

    .line 273
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v0

    .line 274
    .local v0, "result":I
    if-gez v0, :cond_0

    .line 275
    const/4 v1, -0x1

    return v1

    .line 277
    :cond_0
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lnet/sf/scuba/tlv/TLVInputState;->updateValueBytesProcessed(I)V

    .line 278
    return v0
.end method

.method public readLength()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    :try_start_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 140
    const/4 v0, 0x0

    .line 141
    .local v0, "bytesRead":I
    const/4 v1, 0x0

    .line 142
    .local v1, "length":I
    iget-object v2, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 143
    .local v2, "b":I
    add-int/lit8 v0, v0, 0x1

    .line 144
    and-int/lit16 v3, v2, 0x80

    if-nez v3, :cond_0

    .line 146
    move v1, v2

    goto :goto_1

    .line 149
    :cond_0
    and-int/lit8 v3, v2, 0x7f

    .line 150
    .local v3, "count":I
    const/4 v1, 0x0

    .line 151
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 152
    iget-object v5, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    move v2, v5

    .line 153
    add-int/lit8 v0, v0, 0x1

    .line 154
    shl-int/lit8 v1, v1, 0x8

    .line 155
    or-int/2addr v1, v2

    .line 151
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 158
    .end local v3    # "count":I
    .end local v4    # "i":I
    :cond_1
    :goto_1
    iget-object v3, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v3, v1, v0}, Lnet/sf/scuba/tlv/TLVInputState;->setLengthProcessed(II)V

    .line 166
    return v1

    .line 138
    .end local v0    # "bytesRead":I
    .end local v1    # "length":I
    .end local v2    # "b":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not at start of length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public readTag()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->isProcessingValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not at start of tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_1
    :goto_0
    const/4 v0, -0x1

    .line 91
    .local v0, "tag":I
    const/4 v1, 0x0

    .line 93
    .local v1, "bytesRead":I
    :try_start_0
    iget-object v2, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    .line 94
    .local v2, "b":I
    add-int/lit8 v1, v1, 0x1

    .line 95
    :goto_1
    if-eqz v2, :cond_4

    const/16 v3, 0xff

    if-ne v2, v3, :cond_2

    goto :goto_4

    .line 99
    :cond_2
    and-int/lit8 v3, v2, 0x1f

    packed-switch v3, :pswitch_data_0

    .line 118
    move v0, v2

    goto :goto_3

    .line 101
    :pswitch_0
    move v0, v2

    .line 102
    iget-object v3, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    move v2, v3

    .line 103
    add-int/lit8 v1, v1, 0x1

    .line 104
    :goto_2
    and-int/lit16 v3, v2, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_3

    .line 105
    shl-int/lit8 v0, v0, 0x8

    .line 106
    and-int/lit8 v3, v2, 0x7f

    or-int/2addr v0, v3

    .line 107
    iget-object v3, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    move v2, v3

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 110
    :cond_3
    shl-int/lit8 v0, v0, 0x8

    .line 111
    and-int/lit8 v3, v2, 0x7f

    or-int/2addr v0, v3

    .line 121
    :goto_3
    iget-object v3, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v3, v0, v1}, Lnet/sf/scuba/tlv/TLVInputState;->setTagProcessed(II)V

    .line 122
    return v0

    .line 96
    :cond_4
    :goto_4
    iget-object v3, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 123
    .end local v2    # "b":I
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/io/IOException;
    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.method public readValue()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->isProcessingValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->getLength()I

    move-result v0

    .line 185
    .local v0, "length":I
    new-array v1, v0, [B

    .line 186
    .local v1, "value":[B
    iget-object v2, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 187
    iget-object v2, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v2, v0}, Lnet/sf/scuba/tlv/TLVInputState;->updateValueBytesProcessed(I)V

    .line 188
    return-object v1

    .line 182
    .end local v0    # "length":I
    .end local v1    # "value":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not yet processing value!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/io/IOException;
    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 327
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->reset()V

    .line 331
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->markedState:Lnet/sf/scuba/tlv/TLVInputState;

    iput-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    .line 332
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->markedState:Lnet/sf/scuba/tlv/TLVInputState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit p0

    return-void

    .line 328
    .end local p0    # "this":Lnet/sf/scuba/tlv/TLVInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 326
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 291
    return-wide v0

    .line 293
    :cond_0
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->inputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/DataInputStream;->skip(J)J

    move-result-wide v0

    .line 294
    .local v0, "result":J
    iget-object v2, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lnet/sf/scuba/tlv/TLVInputState;->updateValueBytesProcessed(I)V

    .line 295
    return-wide v0
.end method

.method public skipToTag(I)V
    .locals 4
    .param p1, "searchTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    :goto_0
    const/4 v0, -0x1

    .line 217
    .local v0, "tag":I
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfTag()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 219
    :cond_0
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputState;->isAtStartOfLength()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    .line 221
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputState;->getTag()I

    move-result v1

    invoke-static {v1}, Lnet/sf/scuba/tlv/TLVUtil;->isPrimitive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 222
    invoke-direct {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->skipValue()J

    goto :goto_1

    .line 225
    :cond_1
    iget-object v1, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v1}, Lnet/sf/scuba/tlv/TLVInputState;->getTag()I

    move-result v1

    invoke-static {v1}, Lnet/sf/scuba/tlv/TLVUtil;->isPrimitive(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    invoke-direct {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->skipValue()J

    .line 230
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->readTag()I

    move-result v0

    .line 231
    if-ne v0, p1, :cond_3

    .line 232
    return-void

    .line 235
    :cond_3
    invoke-static {v0}, Lnet/sf/scuba/tlv/TLVUtil;->isPrimitive(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 236
    invoke-virtual {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->readLength()I

    move-result v1

    .line 237
    .local v1, "length":I
    invoke-direct {p0}, Lnet/sf/scuba/tlv/TLVInputStream;->skipValue()J

    move-result-wide v2

    long-to-int v2, v2

    .line 238
    .local v2, "skippedBytes":I
    if-lt v2, v1, :cond_4

    .line 240
    goto :goto_0

    .line 248
    .end local v0    # "tag":I
    .end local v1    # "length":I
    .end local v2    # "skippedBytes":I
    :cond_4
    return-void

    .line 247
    :cond_5
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 347
    iget-object v0, p0, Lnet/sf/scuba/tlv/TLVInputStream;->state:Lnet/sf/scuba/tlv/TLVInputState;

    invoke-virtual {v0}, Lnet/sf/scuba/tlv/TLVInputState;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
