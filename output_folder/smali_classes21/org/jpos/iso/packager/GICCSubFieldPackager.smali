.class public Lorg/jpos/iso/packager/GICCSubFieldPackager;
.super Lorg/jpos/iso/packager/GenericPackager;
.source "GICCSubFieldPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOSubFieldPackager;
.implements Lorg/jpos/iso/packager/GenericPackagerParams;


# instance fields
.field private fieldId:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lorg/jpos/iso/packager/GenericPackager;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fieldId:I

    .line 39
    return-void
.end method


# virtual methods
.method protected emitBitMap()Z
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public getFieldNumber()I
    .locals 1

    .line 50
    iget v0, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fieldId:I

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 11
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, "len":I
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v1

    .line 64
    .local v1, "tab":Ljava/util/Map;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v2, "list":Ljava/util/List;
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISOField;

    .line 68
    .local v3, "f0":Lorg/jpos/iso/ISOField;
    if-eqz v3, :cond_0

    .line 69
    invoke-virtual {v3}, Lorg/jpos/iso/ISOField;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    add-int/2addr v0, v5

    .line 73
    .end local v4    # "s":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    array-length v5, v5

    if-ge v4, v5, :cond_2

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 75
    .local v5, "obj":Ljava/lang/Object;
    instance-of v6, v5, Lorg/jpos/iso/ISOComponent;

    if-eqz v6, :cond_1

    .line 76
    move-object v6, v5

    check-cast v6, Lorg/jpos/iso/ISOComponent;

    .line 77
    .local v6, "f":Lorg/jpos/iso/ISOComponent;
    iget-object v7, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v7, v7, v4

    invoke-virtual {v7, v6}, Lorg/jpos/iso/ISOFieldPackager;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v7

    .line 78
    .local v7, "b":[B
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    array-length v8, v7

    add-int/2addr v0, v8

    .line 73
    .end local v5    # "obj":Ljava/lang/Object;
    .end local v6    # "f":Lorg/jpos/iso/ISOComponent;
    .end local v7    # "b":[B
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 83
    .end local v4    # "i":I
    :cond_2
    new-array v4, v0, [B

    .line 84
    .local v4, "result":[B
    const/4 v5, 0x0

    .line 85
    .local v5, "k":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 86
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    .line 87
    .restart local v7    # "b":[B
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    array-length v9, v7

    if-ge v8, v9, :cond_3

    .line 88
    add-int/lit8 v9, v5, 0x1

    .end local v5    # "k":I
    .local v9, "k":I
    aget-byte v10, v7, v8

    aput-byte v10, v4, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_2

    .line 85
    .end local v7    # "b":[B
    .end local v8    # "j":I
    .end local v9    # "k":I
    .restart local v5    # "k":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 91
    .end local v6    # "i":I
    :cond_4
    return-object v4

    .line 92
    .end local v0    # "len":I
    .end local v1    # "tab":Ljava/util/Map;
    .end local v2    # "list":Ljava/util/List;
    .end local v3    # "f0":Lorg/jpos/iso/ISOField;
    .end local v4    # "result":[B
    .end local v5    # "k":I
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setGenericPackagerParams(Lorg/xml/sax/Attributes;)V
    .locals 1
    .param p1, "atts"    # Lorg/xml/sax/Attributes;

    .line 55
    invoke-super {p0, p1}, Lorg/jpos/iso/packager/GenericPackager;->setGenericPackagerParams(Lorg/xml/sax/Attributes;)V

    .line 56
    const-string v0, "id"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fieldId:I

    .line 57
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 4
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "consumed":I
    iget-object v1, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    aget-byte v1, p2, v0

    const/16 v3, 0x20

    if-ne v1, v3, :cond_0

    .line 103
    iget-object v1, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v1, v1, v2

    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v1

    .line 104
    .local v1, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v3, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v2, v3, v2

    invoke-virtual {v2, v1, p2, v0}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v2

    add-int/2addr v0, v2

    .line 105
    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 109
    .end local v1    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_0
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    .line 110
    add-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    invoke-static {p2, v1, v2}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, "fieldNumber":I
    iget-object v2, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    .line 113
    goto :goto_1

    .line 114
    :cond_1
    iget-object v2, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v2, v2, v1

    invoke-virtual {v2, v1}, Lorg/jpos/iso/ISOFieldPackager;->createComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v2

    .line 115
    .local v2, "c":Lorg/jpos/iso/ISOComponent;
    iget-object v3, p0, Lorg/jpos/iso/packager/GICCSubFieldPackager;->fld:[Lorg/jpos/iso/ISOFieldPackager;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2, p2, v0}, Lorg/jpos/iso/ISOFieldPackager;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v3

    add-int/2addr v0, v3

    .line 116
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 117
    .end local v1    # "fieldNumber":I
    goto :goto_0

    .line 119
    .end local v2    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_2
    :goto_1
    return v0
.end method
