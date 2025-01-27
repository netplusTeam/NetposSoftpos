.class public abstract Lorg/jpos/iso/TaggedFieldPackagerBase;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "TaggedFieldPackagerBase.java"


# instance fields
.field private delegate:Lorg/jpos/iso/ISOFieldPackager;

.field private packingLenient:Z

.field private parentFieldNumber:I

.field private tagMapper:Lorg/jpos/iso/packager/TagMapper;

.field private unpackingLenient:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->packingLenient:Z

    .line 38
    iput-boolean v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->unpackingLenient:Z

    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->packingLenient:Z

    .line 38
    iput-boolean v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->unpackingLenient:Z

    .line 51
    invoke-virtual {p0, p1, p2}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getDelegate(ILjava/lang/String;)Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->delegate:Lorg/jpos/iso/ISOFieldPackager;

    .line 52
    return-void
.end method

.method private declared-synchronized getDelegate()Lorg/jpos/iso/ISOFieldPackager;
    .locals 2

    monitor-enter p0

    .line 154
    :try_start_0
    iget-object v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->delegate:Lorg/jpos/iso/ISOFieldPackager;

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getLength()I

    move-result v0

    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getDelegate(ILjava/lang/String;)Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->delegate:Lorg/jpos/iso/ISOFieldPackager;

    .line 157
    .end local p0    # "this":Lorg/jpos/iso/TaggedFieldPackagerBase;
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->delegate:Lorg/jpos/iso/ISOFieldPackager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected abstract getDelegate(ILjava/lang/String;)Lorg/jpos/iso/ISOFieldPackager;
.end method

.method public getMaxPackedLength()I
    .locals 2

    .line 188
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagNameLength()I

    move-result v0

    invoke-direct {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getDelegate()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jpos/iso/ISOFieldPackager;->getMaxPackedLength()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getParentFieldNumber()I
    .locals 1

    .line 192
    iget v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->parentFieldNumber:I

    return v0
.end method

.method protected getTagMapper()Lorg/jpos/iso/packager/TagMapper;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->tagMapper:Lorg/jpos/iso/packager/TagMapper;

    return-object v0
.end method

.method protected abstract getTagNameLength()I
.end method

.method protected isPackingLenient()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->packingLenient:Z

    return v0
.end method

.method protected isUnpackingLenient()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->unpackingLenient:Z

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;Ljava/io/ObjectOutput;)V

    .line 88
    :cond_0
    return-void
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 7
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 64
    new-array v0, v1, [B

    .local v0, "packed":[B
    goto :goto_0

    .line 66
    .end local v0    # "packed":[B
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagMapper()Lorg/jpos/iso/packager/TagMapper;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getParentFieldNumber()I

    move-result v2

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v2, v3}, Lorg/jpos/iso/packager/TagMapper;->getTagForField(II)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "tag":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 68
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->isPackingLenient()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-array v1, v1, [B

    move-object v0, v1

    .local v1, "packed":[B
    goto :goto_0

    .line 69
    .end local v1    # "packed":[B
    :cond_1
    new-instance v1, Lorg/jpos/iso/ISOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No tag mapping found for field: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->parentFieldNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 73
    :cond_2
    sget-object v2, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 74
    .local v2, "tagBytes":[B
    invoke-direct {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getDelegate()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v3

    .line 75
    .local v3, "message":[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [B

    .line 76
    .local v4, "packed":[B
    array-length v5, v2

    invoke-static {v2, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    array-length v5, v2

    array-length v6, v3

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v4

    .line 80
    .end local v2    # "tagBytes":[B
    .end local v3    # "message":[B
    .end local v4    # "packed":[B
    .local v0, "packed":[B
    :goto_0
    return-object v0
.end method

.method public setPackingLenient(Z)V
    .locals 0
    .param p1, "packingLenient"    # Z

    .line 179
    iput-boolean p1, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->packingLenient:Z

    .line 180
    return-void
.end method

.method public setParentFieldNumber(I)V
    .locals 0
    .param p1, "parentFieldNumber"    # I

    .line 196
    iput p1, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->parentFieldNumber:I

    .line 197
    return-void
.end method

.method public setTagMapper(Lorg/jpos/iso/packager/TagMapper;)V
    .locals 0
    .param p1, "tagMapper"    # Lorg/jpos/iso/packager/TagMapper;

    .line 200
    iput-object p1, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->tagMapper:Lorg/jpos/iso/packager/TagMapper;

    .line 201
    return-void
.end method

.method public setUnpackingLenient(Z)V
    .locals 0
    .param p1, "unpackingLenient"    # Z

    .line 183
    iput-boolean p1, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->unpackingLenient:Z

    .line 184
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagNameLength()I

    move-result v0

    new-array v0, v0, [B

    .line 104
    .local v0, "tagBytes":[B
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagNameLength()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p2, p3, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 106
    .local v1, "tag":Ljava/lang/String;
    instance-of v2, p1, Lorg/jpos/iso/ISOField;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/jpos/iso/ISOBinaryField;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an ISOField"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 109
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagMapper()Lorg/jpos/iso/packager/TagMapper;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getParentFieldNumber()I

    move-result v3

    invoke-interface {v2, v3, v1}, Lorg/jpos/iso/packager/TagMapper;->getFieldNumberForTag(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 110
    .local v2, "fieldNumber":Ljava/lang/Integer;
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_2

    goto :goto_1

    .line 116
    :cond_2
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 117
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagNameLength()I

    move-result v3

    invoke-direct {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getDelegate()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v4

    array-length v5, v0

    add-int/2addr v5, p3

    invoke-virtual {v4, p1, p2, v5}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v4

    add-int/2addr v3, v4

    .local v3, "consumed":I
    goto :goto_2

    .line 119
    .end local v3    # "consumed":I
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "consumed":I
    goto :goto_2

    .line 111
    .end local v3    # "consumed":I
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->isUnpackingLenient()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 114
    const/4 v3, 0x0

    .line 122
    .restart local v3    # "consumed":I
    :goto_2
    return v3

    .line 112
    .end local v3    # "consumed":I
    :cond_5
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No field mapping found for tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->parentFieldNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 128
    invoke-virtual {p2}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 131
    instance-of v0, p1, Lorg/jpos/iso/ISOField;

    if-eqz v0, :cond_4

    .line 134
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagNameLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->mark(I)V

    .line 137
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagNameLength()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/TaggedFieldPackagerBase;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    sget-object v2, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 138
    .local v0, "tag":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getTagMapper()Lorg/jpos/iso/packager/TagMapper;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getParentFieldNumber()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/jpos/iso/packager/TagMapper;->getFieldNumberForTag(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    .line 139
    .local v1, "fieldNumber":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    invoke-direct {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->getDelegate()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    goto :goto_1

    .line 140
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lorg/jpos/iso/TaggedFieldPackagerBase;->isUnpackingLenient()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p2}, Ljava/io/InputStream;->reset()V

    .line 151
    :goto_1
    return-void

    .line 141
    :cond_3
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No field mapping found for tag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/jpos/iso/TaggedFieldPackagerBase;->parentFieldNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 132
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "fieldNumber":Ljava/lang/Integer;
    :cond_4
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not an ISOField"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_5
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "InputStream should support marking"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
