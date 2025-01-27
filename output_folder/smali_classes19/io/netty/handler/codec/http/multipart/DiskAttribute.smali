.class public Lio/netty/handler/codec/http/multipart/DiskAttribute;
.super Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;
.source "DiskAttribute.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/Attribute;


# static fields
.field public static baseDirectory:Ljava/lang/String; = null

.field public static deleteOnExitTemporaryFile:Z = false

.field public static final postfix:Ljava/lang/String; = ".att"

.field public static final prefix:Ljava/lang/String; = "Attr_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 44
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J

    .line 48
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/nio/charset/Charset;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "definedSize"    # J
    .param p4, "charset"    # Ljava/nio/charset/Charset;

    .line 56
    invoke-direct {p0, p1, p4, p2, p3}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 57
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

    .line 60
    sget-object v0, Lio/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, p2, v0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 61
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

    .line 64
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 65
    invoke-virtual {p0, p2}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->setValue(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 52
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    .line 53
    return-void
.end method


# virtual methods
.method public addContent(Lio/netty/buffer/ByteBuf;Z)V
    .locals 6
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;
    .param p2, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-wide v0, p0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->size:J

    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 94
    .local v0, "newDefinedSize":J
    invoke-virtual {p0, v0, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->checkSize(J)V

    .line 95
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 96
    iput-wide v0, p0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->addContent(Lio/netty/buffer/ByteBuf;Z)V

    .line 99
    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/Attribute;)I
    .locals 2
    .param p1, "o"    # Lio/netty/handler/codec/http/multipart/Attribute;

    .line 125
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 3
    .param p1, "o"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 117
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/Attribute;

    if-eqz v0, :cond_0

    .line 121
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/Attribute;)I

    move-result v0

    return v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
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

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic copy()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 2

    .line 164
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 165
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic copy()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->copy()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method protected deleteOnExit()Z
    .locals 1

    .line 139
    sget-boolean v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    return v0
.end method

.method public bridge synthetic duplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 2

    .line 170
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 171
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic duplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->duplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/multipart/Attribute;

    .line 112
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/Attribute;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lio/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected getBaseDirectory()Ljava/lang/String;
    .locals 1

    .line 144
    sget-object v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    return-object v0
.end method

.method protected getDiskFilename()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 70
    sget-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method protected getPostfix()Ljava/lang/String;
    .locals 1

    .line 154
    const-string v0, ".att"

    return-object v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 1

    .line 159
    const-string v0, "Attr_"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->get()[B

    move-result-object v0

    .line 76
    .local v0, "bytes":[B
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 103
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 3
    .param p1, "content"    # Lio/netty/buffer/ByteBuf;

    .line 196
    new-instance v0, Lio/netty/handler/codec/http/multipart/DiskAttribute;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;-><init>(Ljava/lang/String;)V

    .line 197
    .local v0, "attr":Lio/netty/handler/codec/http/multipart/DiskAttribute;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->setCharset(Ljava/nio/charset/Charset;)V

    .line 198
    if-eqz p1, :cond_0

    .line 200
    :try_start_0
    invoke-virtual {v0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->setContent(Lio/netty/buffer/ByteBuf;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lio/netty/channel/ChannelException;

    invoke-direct {v2, v1}, Lio/netty/channel/ChannelException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 205
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-object v0
.end method

.method public bridge synthetic replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 216
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->retain()Lio/netty/handler/codec/http/multipart/HttpData;

    .line 217
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0
    .param p1, "increment"    # I

    .line 210
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->retain(I)Lio/netty/handler/codec/http/multipart/HttpData;

    .line 211
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 3

    .line 176
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->content()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 177
    .local v0, "content":Lio/netty/buffer/ByteBuf;
    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 179
    const/4 v1, 0x0

    .line 181
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v2, "duplicate":Lio/netty/handler/codec/http/multipart/Attribute;
    const/4 v1, 0x1

    .line 183
    nop

    .line 185
    if-nez v1, :cond_0

    .line 186
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 183
    :cond_0
    return-object v2

    .line 185
    .end local v2    # "duplicate":Lio/netty/handler/codec/http/multipart/Attribute;
    :catchall_0
    move-exception v2

    if-nez v1, :cond_1

    .line 186
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 188
    :cond_1
    throw v2

    .line 190
    .end local v1    # "success":Z
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->replace(Lio/netty/buffer/ByteBuf;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic retainedDuplicate()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->retainedDuplicate()Lio/netty/handler/codec/http/multipart/Attribute;

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

    .line 81
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 83
    .local v0, "bytes":[B
    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->checkSize(J)V

    .line 84
    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    .line 85
    .local v1, "buffer":Lio/netty/buffer/ByteBuf;
    iget-wide v2, p0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 86
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lio/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    .line 88
    :cond_0
    invoke-virtual {p0, v1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->setContent(Lio/netty/buffer/ByteBuf;)V

    .line 89
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 131
    const/16 v0, 0x3d

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBufHolder;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBufHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0

    .line 222
    invoke-super {p0}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch()Lio/netty/handler/codec/http/multipart/HttpData;

    .line 223
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 228
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/multipart/AbstractDiskHttpData;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;

    .line 229
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/HttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch()Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/DiskAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/Attribute;

    move-result-object p1

    return-object p1
.end method
