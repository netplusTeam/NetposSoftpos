.class public Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;
.super Lorg/jpos/iso/packager/GenericPackager;
.source "GenericTaggedFieldsPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOSubFieldPackager;


# instance fields
.field private fieldId:Ljava/lang/Integer;

.field private lenSize:I

.field private swapTagAndLen:Z

.field private tagMapBuilder:Lorg/jpos/tlv/CharTagMapBuilder;

.field private tagMapper:Lorg/jpos/iso/packager/TagMapper;

.field private tagSize:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapper:Lorg/jpos/iso/packager/TagMapper;

    .line 47
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fieldId:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method static synthetic lambda$pack$0(Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getFieldNumber()I
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fieldId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected isPackingLenient()Z
    .locals 1

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method protected isUnpackingLenient()Z
    .locals 1

    .line 260
    const/4 v0, 0x0

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 12
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "pack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 129
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x64

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 134
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v2

    .line 135
    .local v2, "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOComponent;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager$$ExternalSyntheticLambda0;-><init>()V

    .line 136
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 137
    invoke-interface {v3}, Ljava/util/stream/Stream;->sorted()Ljava/util/stream/Stream;

    move-result-object v3

    .line 138
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 140
    .local v3, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 141
    .local v5, "i":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jpos/iso/ISOComponent;

    .line 142
    .local v6, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v7, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v7, v7, v5

    if-nez v7, :cond_2

    .line 144
    instance-of v7, v6, Lorg/jpos/iso/ISOField;

    if-nez v7, :cond_0

    .line 146
    goto :goto_0

    .line 148
    :cond_0
    iget-object v7, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapper:Lorg/jpos/iso/packager/TagMapper;

    iget-object v8, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fieldId:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8, v5}, Lorg/jpos/iso/packager/TagMapper;->getTagForField(II)Ljava/lang/String;

    move-result-object v7

    .line 149
    .local v7, "tag":Ljava/lang/String;
    if-nez v7, :cond_1

    .line 151
    goto :goto_0

    .line 153
    :cond_1
    iget-object v8, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapBuilder:Lorg/jpos/tlv/CharTagMapBuilder;

    invoke-virtual {v8}, Lorg/jpos/tlv/CharTagMapBuilder;->build()Lorg/jpos/tlv/CharTagMap;

    move-result-object v8

    .line 155
    .local v8, "tm":Lorg/jpos/tlv/CharTagMap;
    invoke-virtual {v6}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 156
    .local v9, "value":Ljava/lang/String;
    invoke-virtual {v8, v7, v9}, Lorg/jpos/tlv/CharTagMap;->addTag(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/CharTagMap;

    .line 157
    invoke-virtual {v8}, Lorg/jpos/tlv/CharTagMap;->pack()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v10

    .line 158
    .local v10, "b":[B
    invoke-virtual {v1, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    goto :goto_0

    .line 163
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "tm":Lorg/jpos/tlv/CharTagMap;
    .end local v9    # "value":Ljava/lang/String;
    .end local v10    # "b":[B
    :cond_2
    :try_start_2
    iget-object v7, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v7, v7, v5

    invoke-virtual {v7, v6}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v7

    .line 164
    .local v7, "b":[B
    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 170
    nop

    .line 171
    .end local v5    # "i":I
    goto :goto_0

    .line 165
    .end local v7    # "b":[B
    .restart local v5    # "i":I
    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    .line 166
    .local v4, "ex":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error packing subfield "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 169
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v4

    .line 173
    .end local v4    # "ex":Ljava/lang/Exception;
    .end local v5    # "i":I
    .end local v6    # "c":Lorg/jpos/iso/ISOComponent;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 174
    .local v4, "d":[B
    iget-object v5, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v5, :cond_4

    .line 175
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 176
    :cond_4
    nop

    .line 177
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Lorg/jpos/iso/ISOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 184
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 176
    return-object v4

    .line 129
    .end local v2    # "fields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lorg/jpos/iso/ISOComponent;>;"
    .end local v3    # "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "d":[B
    :catchall_0
    move-exception v2

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 177
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_1
    move-exception v3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_2
    throw v3
    :try_end_7
    .catch Lorg/jpos/iso/ISOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 184
    .end local v1    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_3
    move-exception v1

    goto :goto_3

    .line 180
    :catch_2
    move-exception v1

    .line 181
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 182
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v2

    .line 177
    .end local v1    # "ex":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catch_3
    move-exception v1

    .line 178
    .local v1, "ex":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 179
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 184
    .end local v1    # "ex":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_3
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 185
    throw v1
.end method

.method public setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V
    .locals 6
    .param p1, "fld"    # [Lorg/jpos/iso/ISOFieldPackager;

    .line 190
    invoke-super {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 191
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    .line 192
    .local v2, "aFld":Lorg/jpos/iso/ISOFieldPackager;
    const/4 v3, 0x0

    .line 193
    .local v3, "tfp":Lorg/jpos/iso/TaggedFieldPackagerBase;
    instance-of v4, v2, Lorg/jpos/iso/TaggedFieldPackagerBase;

    if-eqz v4, :cond_0

    .line 194
    move-object v3, v2

    check-cast v3, Lorg/jpos/iso/TaggedFieldPackagerBase;

    goto :goto_1

    .line 195
    :cond_0
    instance-of v4, v2, Lorg/jpos/iso/ISOMsgFieldPackager;

    if-eqz v4, :cond_1

    .line 196
    move-object v4, v2

    check-cast v4, Lorg/jpos/iso/ISOMsgFieldPackager;

    .line 197
    .local v4, "fp":Lorg/jpos/iso/ISOMsgFieldPackager;
    invoke-virtual {v4}, Lorg/jpos/iso/ISOMsgFieldPackager;->getISOFieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v5

    instance-of v5, v5, Lorg/jpos/iso/TaggedFieldPackagerBase;

    if-eqz v5, :cond_1

    .line 198
    invoke-virtual {v4}, Lorg/jpos/iso/ISOMsgFieldPackager;->getISOFieldPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v5

    move-object v3, v5

    check-cast v3, Lorg/jpos/iso/TaggedFieldPackagerBase;

    .line 200
    .end local v4    # "fp":Lorg/jpos/iso/ISOMsgFieldPackager;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 201
    iget-object v4, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fieldId:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jpos/iso/TaggedFieldPackagerBase;->setParentFieldNumber(I)V

    .line 202
    iget-object v4, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapper:Lorg/jpos/iso/packager/TagMapper;

    invoke-virtual {v3, v4}, Lorg/jpos/iso/TaggedFieldPackagerBase;->setTagMapper(Lorg/jpos/iso/packager/TagMapper;)V

    .line 203
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->isPackingLenient()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jpos/iso/TaggedFieldPackagerBase;->setPackingLenient(Z)V

    .line 204
    invoke-virtual {p0}, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->isUnpackingLenient()Z

    move-result v4

    invoke-virtual {v3, v4}, Lorg/jpos/iso/TaggedFieldPackagerBase;->setUnpackingLenient(Z)V

    .line 191
    .end local v2    # "aFld":Lorg/jpos/iso/ISOFieldPackager;
    .end local v3    # "tfp":Lorg/jpos/iso/TaggedFieldPackagerBase;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    :cond_3
    return-void
.end method

.method public setGenericPackagerParams(Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 211
    const-string v0, "swapTagAndLen"

    const-string v1, "lenSize"

    const-string v2, "tagSize"

    invoke-super {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 213
    :try_start_0
    const-string v3, "tagMapper"

    invoke-interface {p1, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lorg/jpos/iso/packager/TagMapper;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3

    .line 214
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jpos/iso/packager/TagMapper;>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/packager/TagMapper;

    iput-object v4, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapper:Lorg/jpos/iso/packager/TagMapper;

    .line 215
    const-string v4, "id"

    invoke-interface {p1, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fieldId:Ljava/lang/Integer;

    .line 217
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 219
    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagSize:I

    .line 221
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 223
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->lenSize:I

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->swapTagAndLen:Z

    .line 226
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 227
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->swapTagAndLen:Z

    .line 229
    :cond_0
    new-instance v0, Lorg/jpos/tlv/CharTagMapBuilder;

    invoke-direct {v0}, Lorg/jpos/tlv/CharTagMapBuilder;-><init>()V

    iget v1, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagSize:I

    .line 230
    invoke-virtual {v0, v1}, Lorg/jpos/tlv/CharTagMapBuilder;->withTagSize(I)Lorg/jpos/tlv/CharTagMapBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->lenSize:I

    .line 231
    invoke-virtual {v0, v1}, Lorg/jpos/tlv/CharTagMapBuilder;->withLengthSize(I)Lorg/jpos/tlv/CharTagMapBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->swapTagAndLen:Z

    .line 232
    invoke-virtual {v0, v1}, Lorg/jpos/tlv/CharTagMapBuilder;->withTagLengthSwap(Z)Lorg/jpos/tlv/CharTagMapBuilder;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapBuilder:Lorg/jpos/tlv/CharTagMapBuilder;

    .line 240
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jpos/iso/packager/TagMapper;>;"
    nop

    .line 241
    return-void

    .line 222
    .restart local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jpos/iso/packager/TagMapper;>;"
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'lenSize\' attribute is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "atts":Lorg/xml/sax/Attributes;
    throw v0

    .line 218
    .restart local p1    # "atts":Lorg/xml/sax/Attributes;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The \'tagSize\' attribute is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "atts":Lorg/xml/sax/Attributes;
    throw v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/jpos/iso/packager/TagMapper;>;"
    .restart local p1    # "atts":Lorg/xml/sax/Attributes;
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 236
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 237
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 234
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/InstantiationException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 11
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 70
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 72
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    if-ne v1, p1, :cond_6

    .line 74
    array-length v1, p2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 75
    nop

    .line 110
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 75
    return v2

    .line 76
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v1, :cond_1

    .line 77
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 79
    :cond_1
    const/4 v1, 0x0

    .line 80
    .local v1, "consumed":I
    invoke-virtual {p0, p2}, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->unpackTLV([B)Lorg/jpos/tlv/CharTagMap;

    move-result-object v3

    .line 81
    .local v3, "tm":Lorg/jpos/tlv/CharTagMap;
    invoke-virtual {v3}, Lorg/jpos/tlv/CharTagMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/tlv/CharTag;

    .line 82
    .local v5, "tag":Lorg/jpos/tlv/CharTag;
    iget-object v6, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapper:Lorg/jpos/iso/packager/TagMapper;

    iget-object v7, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fieldId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v5}, Lorg/jpos/tlv/CharTag;->getTagId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/jpos/iso/packager/TagMapper;->getFieldNumberForTag(ILjava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 83
    .local v6, "i":Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 85
    goto :goto_0

    .line 87
    :cond_2
    iget-object v7, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    if-nez v7, :cond_3

    .line 88
    iget v7, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagSize:I

    iget v8, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->lenSize:I

    add-int/2addr v7, v8

    invoke-virtual {v5}, Lorg/jpos/tlv/CharTag;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    add-int/2addr v1, v7

    .line 89
    new-instance v7, Lorg/jpos/iso/ISOField;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v5}, Lorg/jpos/tlv/CharTag;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v7}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_1

    .line 91
    :cond_3
    iget-object v7, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v7

    .line 92
    .local v7, "c":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {v5}, Lorg/jpos/tlv/CharTag;->getTLV()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    .line 93
    .local v8, "bb":[B
    iget-object v9, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v9, v10

    invoke-virtual {v9, v7, v8, v2}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v9

    .line 94
    .local v9, "unpacked":I
    add-int/2addr v1, v9

    .line 95
    invoke-virtual {p1, v7}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 97
    .end local v5    # "tag":Lorg/jpos/tlv/CharTag;
    .end local v6    # "i":Ljava/lang/Integer;
    .end local v7    # "c":Lorg/jpos/iso/ISOComponent;
    .end local v8    # "bb":[B
    .end local v9    # "unpacked":I
    :goto_1
    goto :goto_0

    .line 98
    :cond_4
    array-length v2, p2

    if-eq v2, v1, :cond_5

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: unpack len="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " consumed="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 102
    :cond_5
    nop

    .line 110
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 102
    return v1

    .line 73
    .end local v1    # "consumed":I
    .end local v3    # "tm":Lorg/jpos/tlv/CharTagMap;
    :cond_6
    :try_start_2
    new-instance v1, Lorg/jpos/iso/ISOException;

    const-string v2, "Can\'t call packager on non Composite"

    invoke-direct {v1, v2}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 106
    :catch_0
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 108
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v2

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catch_1
    move-exception v1

    .line 104
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 105
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :goto_2
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 111
    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;

    .line 117
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "The on InputStream is not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unpackTLV([B)Lorg/jpos/tlv/CharTagMap;
    .locals 3
    .param p1, "b"    # [B

    .line 63
    iget-object v0, p0, Lorg/jpos/iso/packager/GenericTaggedFieldsPackager;->tagMapBuilder:Lorg/jpos/tlv/CharTagMapBuilder;

    invoke-virtual {v0}, Lorg/jpos/tlv/CharTagMapBuilder;->build()Lorg/jpos/tlv/CharTagMap;

    move-result-object v0

    .line 64
    .local v0, "tm":Lorg/jpos/tlv/CharTagMap;
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v1}, Lorg/jpos/tlv/CharTagMap;->unpack(Ljava/lang/CharSequence;)V

    .line 65
    return-object v0
.end method
