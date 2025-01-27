.class public Lio/netty/handler/codec/http/multipart/MemoryAttribute;
.super Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;
.source "MemoryAttribute.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/Attribute;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 34
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J

    .line 38
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 46
    invoke-direct {p0, p1, p4, p2, p3}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 55
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setValue(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 42
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 43
    return-void
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 7
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    .line 83
    .local v0, "localsize":I
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->checkSize(J)V

    .line 84
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    iget-wide v3, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->size:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 85
    iget-wide v1, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->size:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 88
    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/Attribute;)I
    .locals 2
    .param p1, "o"    # Lio/netty/handler/codec/http/multipart/Attribute;

    .line 114
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 3
    .param p1, "other"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 106
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_0

    .line 110
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/Attribute;)I

    move-result v0

    return v0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 2

    .line 124
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 125
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 2

    .line 130
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 131
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_0

    .line 98
    const/4 v0, 0x0

    return v0

    .line 100
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 101
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 60
    sget-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getByteBuf()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 92
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 3
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 156
    new-instance v0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;-><init>(Ljava/lang/String;)V

    .line 157
    .local v0, "attr":Lio/netty/handler/codec/http/multipart/MemoryAttribute;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setCharset(Ljava/nio/charset/Charset;)V

    .line 158
    if-eqz p1, :cond_0

    .line 160
    :try_start_0
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setContent(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lio/netty/channel/ChannelException;

    invoke-direct {v2, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 165
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 170
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    .line 171
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0
    .param p1, "increment"    # I

    .line 176
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    .line 177
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 3

    .line 136
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 137
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 139
    const/4 v1, 0x0

    .line 141
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    .local v2, "duplicate":Lio/netty/handler/codec/http/multipart/Attribute;
    const/4 v1, 0x1

    .line 143
    nop

    .line 145
    if-nez v1, :cond_0

    .line 146
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 143
    :cond_0
    return-object v2

    .line 145
    .end local v2    # "duplicate":Lio/netty/handler/codec/http/multipart/Attribute;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 146
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 148
    :cond_1
    throw v2

    .line 150
    .end local v1    # "success":Z
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 72
    .local v0, "bytes":[B
    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->checkSize(J)V

    .line 73
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 74
    .local v1, "buffer":Lio/netty/buffer/ByteBuf;
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 75
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->definedSize:J

    .line 77
    :cond_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->setContent(Lio/netty/buffer/ByteBuf;)V

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 182
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    .line 183
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 188
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractMemoryHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    .line 189
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/MemoryAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method
