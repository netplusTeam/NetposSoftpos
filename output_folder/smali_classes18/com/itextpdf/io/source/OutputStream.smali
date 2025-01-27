.class public Lcom/itextpdf/io/source/OutputStream;
.super Ljava/io/OutputStream;
.source "OutputStream.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/io/OutputStream;",
        ">",
        "Ljava/io/OutputStream;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4a123803849ef552L


# instance fields
.field protected closeStream:Z

.field protected currentPos:J

.field private final numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

.field protected outputStream:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 78
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "outputStream"    # Ljava/io/OutputStream;

    .line 70
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 55
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/ByteBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    .line 71
    iput-object p1, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    .line 72
    return-void
.end method

.method public static getHighPrecision()Z
    .locals 1

    .line 62
    sget-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 248
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 249
    return-void
.end method

.method public static setHighPrecision(Z)V
    .locals 0
    .param p0, "value"    # Z

    .line 66
    sput-boolean p0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    .line 67
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    .line 259
    .local v0, "tempOutputStream":Ljava/io/OutputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    .line 260
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 261
    iput-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    .line 262
    return-void
.end method


# virtual methods
.method public assignBytes([BI)V
    .locals 2
    .param p1, "bytes"    # [B
    .param p2, "count"    # I

    .line 225
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 226
    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->assignBytes([BI)Lcom/itextpdf/io/source/ByteArrayOutputStream;

    .line 227
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    .line 230
    return-void

    .line 229
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Bytes can be assigned to ByteArrayOutputStream only."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 116
    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 110
    return-void
.end method

.method public getCurrentPos()J
    .locals 2

    .line 209
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    return-wide v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 213
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    return-object v0
.end method

.method public isCloseStream()Z
    .locals 1

    .line 217
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-boolean v0, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    return v0
.end method

.method public reset()V
    .locals 2

    .line 233
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    instance-of v1, v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 234
    check-cast v0, Lcom/itextpdf/io/source/ByteArrayOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteArrayOutputStream;->reset()V

    .line 235
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    .line 238
    return-void

    .line 237
    :cond_0
    new-instance v0, Lcom/itextpdf/io/IOException;

    const-string v1, "Bytes can be reset in ByteArrayOutputStream only."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCloseStream(Z)V
    .locals 0
    .param p1, "closeStream"    # Z

    .line 221
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iput-boolean p1, p0, Lcom/itextpdf/io/source/OutputStream;->closeStream:Z

    .line 222
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 84
    iget-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    .line 85
    return-void
.end method

.method public write([B)V
    .locals 4
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 90
    iget-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    array-length v2, p1

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    .line 91
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 96
    iget-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/io/source/OutputStream;->currentPos:J

    .line 97
    return-void
.end method

.method public writeByte(I)Ljava/io/OutputStream;
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 171
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    return-object p0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot write byte."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeByte(B)V
    .locals 3
    .param p1, "value"    # B

    .line 101
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    nop

    .line 105
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot write byte."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBytes([B)Ljava/io/OutputStream;
    .locals 3
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/source/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    return-object p0

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot write bytes."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeBytes([BII)Ljava/io/OutputStream;
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TT;"
        }
    .end annotation

    .line 201
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    return-object p0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot write bytes."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeDouble(D)Ljava/io/OutputStream;
    .locals 1
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TT;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    sget-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/io/source/OutputStream;->writeDouble(DZ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeDouble(DZ)Ljava/io/OutputStream;
    .locals 3
    .param p1, "value"    # D
    .param p3, "highPrecision"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DZ)TT;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-static {p1, p2, v0, p3}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;Z)[B

    .line 162
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    return-object p0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot write float number."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeFloat(F)Ljava/io/OutputStream;
    .locals 1
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)TT;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    sget-boolean v0, Lcom/itextpdf/io/source/ByteUtils;->HighPrecision:Z

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/io/source/OutputStream;->writeFloat(FZ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeFloat(FZ)Ljava/io/OutputStream;
    .locals 2
    .param p1, "value"    # F
    .param p2, "highPrecision"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)TT;"
        }
    .end annotation

    .line 143
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    float-to-double v0, p1

    invoke-virtual {p0, v0, v1, p2}, Lcom/itextpdf/io/source/OutputStream;->writeDouble(DZ)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeFloats([F)Ljava/io/OutputStream;
    .locals 2
    .param p1, "value"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F)TT;"
        }
    .end annotation

    .line 147
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 148
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/itextpdf/io/source/OutputStream;->writeFloat(F)Ljava/io/OutputStream;

    .line 149
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/itextpdf/io/source/OutputStream;->writeSpace()Ljava/io/OutputStream;

    .line 147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public writeInteger(I)Ljava/io/OutputStream;
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(ILcom/itextpdf/io/source/ByteBuffer;)[B

    .line 131
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    return-object p0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot write int number."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeLong(J)Ljava/io/OutputStream;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    long-to-double v0, p1

    :try_start_0
    iget-object v2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->reset()Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(DLcom/itextpdf/io/source/ByteBuffer;)[B

    .line 121
    iget-object v0, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/itextpdf/io/source/OutputStream;->numBuffer:Lcom/itextpdf/io/source/ByteBuffer;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/itextpdf/io/source/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    return-object p0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "Cannot write int number."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeNewLine()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeSpace()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 179
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/OutputStream;->writeByte(I)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public writeString(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 187
    .local p0, "this":Lcom/itextpdf/io/source/OutputStream;, "Lcom/itextpdf/io/source/OutputStream<TT;>;"
    invoke-static {p1}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/io/source/OutputStream;->writeBytes([B)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
