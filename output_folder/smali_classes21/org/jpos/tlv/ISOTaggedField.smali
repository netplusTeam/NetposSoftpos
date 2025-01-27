.class public Lorg/jpos/tlv/ISOTaggedField;
.super Lorg/jpos/iso/ISOComponent;
.source "ISOTaggedField.java"


# instance fields
.field private final delegate:Lorg/jpos/iso/ISOComponent;

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "delegate"    # Lorg/jpos/iso/ISOComponent;

    .line 42
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 43
    if-eqz p1, :cond_1

    .line 46
    if-eqz p2, :cond_0

    .line 49
    iput-object p1, p0, Lorg/jpos/tlv/ISOTaggedField;->tag:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    .line 51
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tag cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->tag:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/tlv/ISOTaggedField;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 140
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 142
    .local v1, "ps":Ljava/io/PrintStream;
    iget-object v2, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/jpos/iso/ISOComponent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 144
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 145
    .local v2, "s":Ljava/lang/String;
    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 148
    :cond_0
    const-string v3, "\r"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_2
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "</"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/tlv/ISOTaggedField;->tag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 153
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "ps":Ljava/io/PrintStream;
    .end local v2    # "s":Ljava/lang/String;
    goto :goto_1

    .line 154
    :cond_3
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1, p2}, Lorg/jpos/iso/ISOComponent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 156
    :goto_1
    return-void
.end method

.method public getBytes()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getChildren()Ljava/util/Map;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getComposite()Lorg/jpos/iso/ISOComponent;
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getComposite()Lorg/jpos/iso/ISOComponent;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    if-ne v0, v1, :cond_0

    .line 93
    return-object p0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDelegate()Lorg/jpos/iso/ISOComponent;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    return-object v0
.end method

.method public getFieldNumber()I
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getFieldNumber()I

    move-result v0

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getMaxField()I
    .locals 1

    .line 120
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getMaxField()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOComponent;->pack(Ljava/io/OutputStream;)V

    .line 133
    return-void
.end method

.method public pack()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOComponent;->pack()[B

    move-result-object v0

    return-object v0
.end method

.method public set(Lorg/jpos/iso/ISOComponent;)V
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOComponent;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 81
    return-void
.end method

.method public setFieldNumber(I)V
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 64
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 65
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lorg/jpos/tlv/ISOTaggedField;->tag:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 75
    return-void
.end method

.method public unpack([B)I
    .locals 1
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOComponent;->unpack([B)I

    move-result v0

    return v0
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOComponent;->unpack(Ljava/io/InputStream;)V

    .line 174
    return-void
.end method

.method public unset(I)V
    .locals 1
    .param p1, "fldno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/jpos/tlv/ISOTaggedField;->delegate:Lorg/jpos/iso/ISOComponent;

    invoke-virtual {v0, p1}, Lorg/jpos/iso/ISOComponent;->unset(I)V

    .line 87
    return-void
.end method
