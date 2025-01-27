.class public Lio/netty/handler/codec/http/multipart/MixedAttribute;
.super Ljava/lang/Object;
.source "MixedAttribute.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/Attribute;


# instance fields
.field private attribute:Lio/netty/handler/codec/http/multipart/Attribute;

.field private final limitSize:J

.field private maxSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitSize"    # J

    .line 36
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J
    .param p4, "limitSize"    # J

    .line 40
    sget-object v6, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;JJLjava/nio/charset/Charset;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J
    .param p4, "limitSize"    # J
    .param p6, "charset"    # Ljava/nio/charset/Charset;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    .line 49
    iput-wide p4, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    .line 50
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p1, p2, p3, p6}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "limitSize"    # J
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    .line 44
    iput-wide p2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    .line 45
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p1, p4}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "limitSize"    # J

    .line 54
    sget-object v5, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/http/multipart/MixedAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "limitSize"    # J
    .param p5, "charset"    # Ljava/nio/charset/Charset;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    .line 58
    iput-wide p3, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p3

    if-lez v0, :cond_0

    .line 61
    :try_start_0
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-direct {v0, p1, p2, p5}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    goto :goto_1

    .line 62
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v1, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v1, p1, p2, p5}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    goto :goto_0

    .line 66
    :catch_1
    move-exception v1

    .line 67
    .local v1, "ignore":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 72
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "ignore":Ljava/io/IOException;
    :cond_0
    :try_start_2
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-direct {v0, p1, p2, p5}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 75
    nop

    .line 77
    :goto_1
    return-void

    .line 73
    :catch_2
    move-exception v0

    .line 74
    .restart local v0    # "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 4
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v1, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v1, :cond_1

    .line 100
    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->checkSize(J)V

    .line 101
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 102
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 103
    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/Attribute;->definedLength()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;J)V

    .line 104
    .local v0, "diskAttribute":Lio/netty/handler/codec/http/multipart/DiskAttribute;
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->setMaxSize(J)V

    .line 105
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    check-cast v1, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    check-cast v1, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    .line 107
    invoke-virtual {v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 109
    :cond_0
    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 112
    .end local v0    # "diskAttribute":Lio/netty/handler/codec/http/multipart/DiskAttribute;
    :cond_1
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/Attribute;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 113
    return-void
.end method

.method public checkSize(J)V
    .locals 4
    .param p1, "newSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Size exceed allowed maximum capacity"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 1
    .param p1, "o"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 233
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 29
    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public content()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 286
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 266
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public definedLength()J
    .locals 2

    .line 162
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->definedLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public delete()V
    .locals 1

    .line 117
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->delete()V

    .line 118
    return-void
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 271
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .line 228
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->get()[B

    move-result-object v0

    return-object v0
.end method

.method public getByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public getChunk(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->getChunk(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getFile()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 213
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v0

    return-object v0
.end method

.method public getMaxSize()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->getString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 223
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isCompleted()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->isCompleted()Z

    move-result v0

    return v0
.end method

.method public isInMemory()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->isInMemory()Z

    move-result v0

    return v0
.end method

.method public length()J
    .locals 2

    .line 157
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public refCnt()I
    .locals 1

    .line 291
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->refCnt()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 320
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 325
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->release(I)Z

    move-result v0

    return v0
.end method

.method public renameTo(Ljava/io/File;)Z
    .locals 1
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->renameTo(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 281
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 296
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    .line 297
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1
    .param p1, "increment"    # I

    .line 302
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    .line 303
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 276
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 172
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->setCharset(Ljava/nio/charset/Charset;)V

    .line 173
    return-void
.end method

.method public setContent(Lio/netty/buffer/ByteBuf;)V
    .locals 4
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->checkSize(J)V

    .line 178
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 179
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/Attribute;->definedLength()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 182
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 185
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->setContent(Lio/netty/buffer/ByteBuf;)V

    .line 186
    return-void
.end method

.method public setContent(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->checkSize(J)V

    .line 191
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->limitSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 192
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    .line 194
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/Attribute;->definedLength()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 195
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 198
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->setContent(Ljava/io/File;)V

    .line 199
    return-void
.end method

.method public setContent(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    instance-of v0, v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    if-eqz v0, :cond_0

    .line 205
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v2}, Lio/netty/handler/codec/http/multipart/Attribute;->definedLength()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    .line 206
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    invoke-interface {v0, v1, v2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 208
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->setContent(Ljava/io/InputStream;)V

    .line 209
    return-void
.end method

.method public setMaxSize(J)V
    .locals 1
    .param p1, "maxSize"    # J

    .line 86
    iput-wide p1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->maxSize:J

    .line 87
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1, p2}, Lio/netty/handler/codec/http/multipart/Attribute;->setMaxSize(J)V

    .line 88
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 248
    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->checkSize(J)V

    .line 251
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->setValue(Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mixed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1

    .line 308
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    .line 309
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 314
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/MixedAttribute;->attribute:Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-interface {v0, p1}, Lio/netty/handler/codec/http/multipart/Attribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    .line 315
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MixedAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method
