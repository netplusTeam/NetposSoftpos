.class public Lorg/jpos/tlv/packager/TaggedSequencePackager;
.super Lorg/jpos/iso/packager/GenericPackager;
.source "TaggedSequencePackager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;
    }
.end annotation


# instance fields
.field protected length:I

.field protected packagerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/iso/TaggedFieldPackager;",
            ">;"
        }
    .end annotation
.end field

.field protected tag:Ljava/lang/String;

.field protected tagPackager:Lorg/jpos/iso/ISOFieldPackager;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;-><init>()V

    .line 51
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    .line 57
    return-void
.end method


# virtual methods
.method protected getTagPackager()Lorg/jpos/iso/ISOFieldPackager;
    .locals 3

    .line 250
    new-instance v0, Lorg/jpos/iso/IF_CHAR;

    iget-object v1, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->tag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "Tag"

    invoke-direct {v0, v1, v2}, Lorg/jpos/iso/IF_CHAR;-><init>(ILjava/lang/String;)V

    .line 251
    .local v0, "tagPackager":Lorg/jpos/iso/IF_CHAR;
    sget-object v1, Lorg/jpos/iso/LeftPadder;->ZERO_PADDER:Lorg/jpos/iso/LeftPadder;

    invoke-virtual {v0, v1}, Lorg/jpos/iso/IF_CHAR;->setPadder(Lorg/jpos/iso/Padder;)V

    .line 252
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 17
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 138
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v3, "pack"

    invoke-direct {v0, v1, v3}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    move-object v3, v0

    .line 139
    .local v3, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x64

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-object v4, v0

    .line 141
    .local v4, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v0

    .line 142
    .local v0, "fields":Ljava/util/Map;
    new-instance v5, Ljava/lang/Integer;

    const/4 v6, -0x1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const/4 v5, 0x0

    .line 144
    .local v5, "len":I
    const/4 v6, 0x0

    .line 145
    .local v6, "tagsStarted":Z
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 146
    .local v7, "iterator":Ljava/util/Iterator;
    instance-of v8, v2, Lorg/jpos/tlv/OffsetIndexedComposite;

    if-eqz v8, :cond_0

    .line 147
    move-object v8, v2

    check-cast v8, Lorg/jpos/tlv/OffsetIndexedComposite;

    invoke-interface {v8}, Lorg/jpos/tlv/OffsetIndexedComposite;->getOffset()I

    move-result v8

    .line 148
    .local v8, "offset":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 149
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 152
    .end local v8    # "offset":I
    .end local v9    # "i":I
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_d

    iget v8, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->length:I

    if-ge v5, v8, :cond_d

    .line 154
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 155
    .local v8, "obj":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Lorg/jpos/iso/ISOComponent;

    .line 158
    .local v9, "c":Lorg/jpos/iso/ISOComponent;
    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_b

    .line 159
    instance-of v10, v9, Lorg/jpos/tlv/ISOTaggedField;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v11, "No default tag packager and no field packager configured for tag: "

    const-string v12, "default"

    if-eqz v10, :cond_5

    .line 160
    const/4 v6, 0x1

    .line 161
    :try_start_2
    move-object v10, v9

    check-cast v10, Lorg/jpos/tlv/ISOTaggedField;

    invoke-virtual {v10}, Lorg/jpos/tlv/ISOTaggedField;->getTag()Ljava/lang/String;

    move-result-object v10

    .line 162
    .local v10, "tag":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 167
    iget-object v13, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    invoke-interface {v13, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/jpos/iso/ISOFieldPackager;

    .line 168
    .local v13, "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    if-nez v13, :cond_1

    .line 169
    iget-object v14, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/jpos/iso/ISOFieldPackager;

    move-object v13, v12

    .line 171
    :cond_1
    if-eqz v13, :cond_3

    .line 174
    invoke-virtual {v13, v9}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v11

    .line 175
    .local v11, "b":[B
    array-length v12, v11

    add-int/2addr v12, v5

    iget v14, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->length:I

    if-le v12, v14, :cond_2

    .line 176
    move-object/from16 v16, v0

    goto/16 :goto_5

    .line 178
    :cond_2
    array-length v12, v11

    add-int/2addr v5, v12

    .line 179
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 181
    .end local v10    # "tag":Ljava/lang/String;
    .end local v13    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 172
    .end local v11    # "b":[B
    .restart local v10    # "tag":Ljava/lang/String;
    .restart local v13    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    :cond_3
    new-instance v12, Lorg/jpos/iso/ISOException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v12, v11}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v12

    .line 163
    .end local v13    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error packing subfield "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v3, v9}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 165
    new-instance v11, Lorg/jpos/iso/ISOException;

    const-string v12, "Tag should not be null"

    invoke-direct {v11, v12}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v11

    .line 181
    .end local v10    # "tag":Ljava/lang/String;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_5
    if-nez v6, :cond_6

    iget-object v10, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v10, v10

    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-le v10, v13, :cond_6

    iget-object v10, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v10, v10, v13

    if-eqz v10, :cond_6

    .line 182
    iget-object v10, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aget-object v10, v10, v11

    invoke-virtual {v10, v9}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v10

    .line 183
    .local v10, "b":[B
    array-length v11, v10

    add-int/2addr v5, v11

    .line 184
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->write([B)V

    move-object/from16 v16, v0

    goto/16 :goto_4

    .line 186
    .end local v10    # "b":[B
    :cond_6
    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 187
    .local v10, "tagNumber":I
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->tag:Ljava/lang/String;

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x30

    invoke-static {v13, v14, v15}, Lorg/jpos/iso/ISOUtil;->padleft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, "tag":Ljava/lang/String;
    new-instance v14, Lorg/jpos/tlv/ISOTaggedField;

    invoke-direct {v14, v13, v9}, Lorg/jpos/tlv/ISOTaggedField;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    .line 189
    .local v14, "isoTaggedField":Lorg/jpos/tlv/ISOTaggedField;
    iget-object v15, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v15, v15

    if-le v15, v10, :cond_7

    .line 190
    iget-object v11, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v9}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    aget-object v11, v11, v12

    invoke-virtual {v11, v14}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v11

    move-object/from16 v16, v0

    .restart local v11    # "b":[B
    goto :goto_3

    .line 192
    .end local v11    # "b":[B
    :cond_7
    iget-object v15, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    invoke-interface {v15, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/jpos/iso/ISOFieldPackager;

    .line 193
    .local v15, "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    if-nez v15, :cond_8

    .line 194
    move-object/from16 v16, v0

    .end local v0    # "fields":Ljava/util/Map;
    .local v16, "fields":Ljava/util/Map;
    iget-object v0, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOFieldPackager;

    move-object v15, v0

    goto :goto_2

    .line 193
    .end local v16    # "fields":Ljava/util/Map;
    .restart local v0    # "fields":Ljava/util/Map;
    :cond_8
    move-object/from16 v16, v0

    .line 196
    .end local v0    # "fields":Ljava/util/Map;
    .restart local v16    # "fields":Ljava/util/Map;
    :goto_2
    if-eqz v15, :cond_a

    .line 199
    invoke-virtual {v15, v14}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    move-object v11, v0

    .line 200
    .restart local v11    # "b":[B
    array-length v0, v11

    add-int/2addr v0, v5

    iget v12, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->length:I

    if-le v0, v12, :cond_9

    .line 201
    goto :goto_5

    .line 204
    .end local v15    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    :cond_9
    :goto_3
    array-length v0, v11

    add-int/2addr v5, v0

    .line 205
    invoke-virtual {v4, v11}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_4

    .line 197
    .end local v11    # "b":[B
    .restart local v15    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    :cond_a
    new-instance v0, Lorg/jpos/iso/ISOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v0

    .line 158
    .end local v10    # "tagNumber":I
    .end local v13    # "tag":Ljava/lang/String;
    .end local v14    # "isoTaggedField":Lorg/jpos/tlv/ISOTaggedField;
    .end local v15    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    .end local v16    # "fields":Ljava/util/Map;
    .restart local v0    # "fields":Ljava/util/Map;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :cond_b
    move-object/from16 v16, v0

    .line 208
    .end local v0    # "fields":Ljava/util/Map;
    .restart local v16    # "fields":Ljava/util/Map;
    :goto_4
    instance-of v0, v2, Lorg/jpos/tlv/OffsetIndexedComposite;

    if-eqz v0, :cond_c

    .line 209
    move-object v0, v2

    check-cast v0, Lorg/jpos/tlv/OffsetIndexedComposite;

    invoke-interface {v0}, Lorg/jpos/tlv/OffsetIndexedComposite;->incOffset()V

    .line 211
    .end local v8    # "obj":Ljava/lang/Object;
    :cond_c
    move-object/from16 v0, v16

    goto/16 :goto_1

    .line 152
    .end local v9    # "c":Lorg/jpos/iso/ISOComponent;
    .end local v16    # "fields":Ljava/util/Map;
    .restart local v0    # "fields":Ljava/util/Map;
    :cond_d
    move-object/from16 v16, v0

    .line 213
    .end local v0    # "fields":Ljava/util/Map;
    .restart local v16    # "fields":Ljava/util/Map;
    :goto_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 214
    .local v0, "d":[B
    iget-object v8, v1, Lorg/jpos/tlv/packager/TaggedSequencePackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v8, :cond_e

    .line 215
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :cond_e
    nop

    .line 217
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 224
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 216
    return-object v0

    .line 139
    .end local v0    # "d":[B
    .end local v5    # "len":I
    .end local v6    # "tagsStarted":Z
    .end local v7    # "iterator":Ljava/util/Iterator;
    .end local v16    # "fields":Ljava/util/Map;
    :catchall_0
    move-exception v0

    move-object v5, v0

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 217
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_1
    move-exception v0

    move-object v6, v0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_6
    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_6
    throw v6
    :try_end_6
    .catch Lorg/jpos/iso/ISOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 224
    .end local v4    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catchall_3
    move-exception v0

    goto :goto_7

    .line 220
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Ljava/lang/Exception;
    :try_start_7
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 222
    new-instance v4, Lorg/jpos/iso/ISOException;

    invoke-direct {v4, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v4

    .line 217
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :catch_1
    move-exception v0

    .line 218
    .local v0, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 219
    nop

    .end local v3    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 224
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    .restart local v3    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    :goto_7
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 225
    throw v0
.end method

.method public setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V
    .locals 6
    .param p1, "subFieldPackagers"    # [Lorg/jpos/iso/ISOFieldPackager;

    .line 236
    invoke-super {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->setFieldPackager([Lorg/jpos/iso/ISOFieldPackager;)V

    .line 237
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 238
    .local v2, "subFieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    instance-of v3, v2, Lorg/jpos/iso/TaggedFieldPackager;

    if-eqz v3, :cond_1

    .line 239
    move-object v3, v2

    check-cast v3, Lorg/jpos/iso/TaggedFieldPackager;

    invoke-interface {v3}, Lorg/jpos/iso/TaggedFieldPackager;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "token":Ljava/lang/String;
    const-string v4, "##########"

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 241
    const-string v3, "default"

    .line 243
    :cond_0
    iget-object v4, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    move-object v5, v2

    check-cast v5, Lorg/jpos/iso/TaggedFieldPackager;

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .end local v2    # "subFieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    .end local v3    # "token":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/tlv/packager/TaggedSequencePackager;->getTagPackager()Lorg/jpos/iso/ISOFieldPackager;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->tagPackager:Lorg/jpos/iso/ISOFieldPackager;

    .line 247
    return-void
.end method

.method public setGenericPackagerParams(Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 230
    invoke-super {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 231
    const-string v0, "token"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/tlv/packager/TaggedSequencePackager;->setToken(Ljava/lang/String;)V

    .line 232
    const-string v0, "length"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->length:I

    .line 233
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->tag:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 10
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "unpack"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 80
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    if-ne v1, p1, :cond_7

    .line 82
    array-length v1, p2
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 83
    const/4 v1, 0x0

    .line 124
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 83
    return v1

    .line 84
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->logger:Lorg/jpos/util/Logger;

    if-eqz v1, :cond_1

    .line 85
    invoke-static {p2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 88
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/jpos/tlv/packager/TaggedSequencePackager;->unpackPrefixes(Lorg/jpos/iso/ISOComponent;[B)Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;

    move-result-object v1

    .line 89
    .local v1, "prefixUnpackResult":Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;
    invoke-virtual {v1}, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;->getSubFieldId()I

    move-result v2

    .line 90
    .local v2, "subFieldId":I
    invoke-virtual {v1}, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;->getConsumed()I

    move-result v3

    .line 92
    .local v3, "consumed":I
    if-nez v2, :cond_2

    .line 93
    const/4 v2, 0x1

    .line 96
    :cond_2
    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_5

    .line 97
    new-instance v4, Lorg/jpos/iso/ISOField;

    invoke-direct {v4, v2}, Lorg/jpos/iso/ISOField;-><init>(I)V

    .line 98
    .local v4, "tagField":Lorg/jpos/iso/ISOField;
    iget-object v5, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->tagPackager:Lorg/jpos/iso/ISOFieldPackager;

    invoke-virtual {v5, v4, p2, v3}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    .line 99
    invoke-virtual {v4}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "tag":Ljava/lang/String;
    iget-object v6, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jpos/iso/ISOFieldPackager;

    .line 101
    .local v6, "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    if-nez v6, :cond_3

    .line 102
    iget-object v7, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->packagerMap:Ljava/util/Map;

    const-string v8, "default"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/iso/ISOFieldPackager;

    move-object v6, v7

    .line 104
    :cond_3
    if-eqz v6, :cond_4

    .line 107
    add-int/lit8 v7, v2, 0x1

    .line 108
    .local v2, "fieldNumber":I
    .local v7, "subFieldId":I
    invoke-virtual {v6, v2}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v8

    check-cast v8, Lorg/jpos/tlv/ISOTaggedField;

    .line 109
    .local v8, "taggedField":Lorg/jpos/tlv/ISOTaggedField;
    invoke-virtual {v6, v8, p2, v3}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v9

    add-int/2addr v3, v9

    .line 110
    invoke-virtual {p1, v8}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 111
    .end local v2    # "fieldNumber":I
    .end local v4    # "tagField":Lorg/jpos/iso/ISOField;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    .end local v8    # "taggedField":Lorg/jpos/tlv/ISOTaggedField;
    move v2, v7

    goto :goto_0

    .line 105
    .end local v7    # "subFieldId":I
    .local v2, "subFieldId":I
    .restart local v4    # "tagField":Lorg/jpos/iso/ISOField;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v6    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    :cond_4
    new-instance v7, Lorg/jpos/iso/ISOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No default tag packager and no field packager configured for tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v7

    .line 112
    .end local v4    # "tagField":Lorg/jpos/iso/ISOField;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v6    # "fieldPackager":Lorg/jpos/iso/ISOFieldPackager;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :cond_5
    array-length v4, p2

    if-eq v4, v3, :cond_6

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING: unpack len="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " consumed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    :cond_6
    nop

    .line 124
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 116
    return v3

    .line 81
    .end local v1    # "prefixUnpackResult":Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;
    .end local v2    # "subFieldId":I
    .end local v3    # "consumed":I
    :cond_7
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

    .line 124
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 120
    :catch_0
    move-exception v1

    .line 121
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 122
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v2

    .line 117
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :catch_1
    move-exception v1

    .line 118
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 119
    nop

    .end local v0    # "evt":Lorg/jpos/util/LogEvent;
    .end local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .end local p2    # "b":[B
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 124
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    .restart local v0    # "evt":Lorg/jpos/util/LogEvent;
    .restart local p1    # "m":Lorg/jpos/iso/ISOComponent;
    .restart local p2    # "b":[B
    :goto_1
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 125
    throw v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot unpack from input stream"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected unpackPrefixes(Lorg/jpos/iso/ISOComponent;[B)Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;
    .locals 4
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "consumed":I
    const/4 v1, 0x0

    .line 277
    .local v1, "subFieldId":I
    :goto_0
    iget-object v2, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v2, v2

    if-le v2, v1, :cond_2

    .line 278
    iget-object v2, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v2, v2, v1

    instance-of v2, v2, Lorg/jpos/iso/TaggedFieldPackager;

    if-eqz v2, :cond_0

    .line 279
    goto :goto_1

    .line 280
    :cond_0
    iget-object v2, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    .line 281
    iget-object v2, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v2

    .line 282
    .local v2, "subField":Lorg/jpos/iso/ISOComponent;
    iget-object v3, p0, Lorg/jpos/tlv/packager/TaggedSequencePackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, p2, v0}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 283
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 285
    .end local v2    # "subField":Lorg/jpos/iso/ISOComponent;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    :cond_2
    :goto_1
    new-instance v2, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;

    invoke-direct {v2, p0, v0, v1}, Lorg/jpos/tlv/packager/TaggedSequencePackager$PrefixUnpackResult;-><init>(Lorg/jpos/tlv/packager/TaggedSequencePackager;II)V

    return-object v2
.end method
