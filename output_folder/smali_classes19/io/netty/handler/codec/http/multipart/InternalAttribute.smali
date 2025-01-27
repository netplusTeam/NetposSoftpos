.class final Lio/netty/handler/codec/http/multipart/InternalAttribute;
.super Lio/netty/util/AbstractReferenceCounted;
.source "InternalAttribute.java"

# interfaces
.implements Lio/netty/handler/codec/http/multipart/InterfaceHttpData;


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private size:I

.field private final value:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 36
    invoke-direct {p0}, Lio/netty/util/AbstractReferenceCounted;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->charset:Ljava/nio/charset/Charset;

    .line 38
    return-void
.end method


# virtual methods
.method public addValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .line 46
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 48
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    iget v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    .line 50
    return-void
.end method

.method public addValue(Ljava/lang/String;I)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "rank"    # I

    .line 53
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 55
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 56
    iget v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    .line 57
    return-void
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 3
    .param p1, "o"    # Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    .line 86
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    if-eqz v0, :cond_0

    .line 90
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    invoke-virtual {p0, v0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/InternalAttribute;)I

    move-result v0

    return v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;->getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compareTo(Lio/netty/handler/codec/http/multipart/InternalAttribute;)I
    .locals 2
    .param p1, "o"    # Lio/netty/handler/codec/http/multipart/InternalAttribute;

    .line 94
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 31
    check-cast p1, Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->compareTo(Lio/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result p1

    return p1
.end method

.method protected deallocate()V
    .locals 0

    .line 122
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    instance-of v0, p1, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/multipart/InternalAttribute;

    .line 81
    .local v0, "attribute":Lio/netty/handler/codec/http/multipart/InternalAttribute;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public getHttpDataType()Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    .line 42
    sget-object v0, Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->InternalAttribute:Lio/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "InternalAttribute"

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 72
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 2

    .line 126
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 127
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 128
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 129
    :cond_0
    return-object p0
.end method

.method public retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 2
    .param p1, "increment"    # I

    .line 134
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 135
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 136
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 137
    :cond_0
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->retain()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->retain(I)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;I)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "rank"    # I

    .line 60
    const-string v0, "value"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-static {p1, v0}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 62
    .local v0, "buf":Lio/netty/buffer/ByteBuf;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 63
    .local v1, "old":Lio/netty/buffer/ByteBuf;
    if-eqz v1, :cond_0

    .line 64
    iget v2, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    .line 65
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 67
    :cond_0
    iget v2, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    .line 68
    return-void
.end method

.method public size()I
    .locals 1

    .line 107
    iget v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size:I

    return v0
.end method

.method public toByteBuf()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 111
    invoke-static {}, Lio/netty/buffer/Unpooled;->compositeBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-virtual {v0, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponents(Ljava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/netty/buffer/CompositeByteBuf;->readerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/buffer/ByteBuf;

    .line 101
    .local v2, "elt":Lio/netty/buffer/ByteBuf;
    iget-object v3, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .end local v2    # "elt":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 2

    .line 142
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 143
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    .line 144
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 145
    :cond_0
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;
    .locals 2
    .param p1, "hint"    # Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lio/netty/handler/codec/http/multipart/InternalAttribute;->value:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 151
    .local v1, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v1, p1}, Lio/netty/buffer/ByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    .line 152
    .end local v1    # "buf":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 153
    :cond_0
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->touch()Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/multipart/InternalAttribute;->touch(Ljava/lang/Object;)Lio/netty/handler/codec/http/multipart/InterfaceHttpData;

    move-result-object p1

    return-object p1
.end method
