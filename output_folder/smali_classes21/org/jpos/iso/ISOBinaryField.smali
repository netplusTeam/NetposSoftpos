.class public Lorg/jpos/iso/ISOBinaryField;
.super Lorg/jpos/iso/ISOComponent;
.source "ISOBinaryField.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = 0x6ae4cc3de2916074L


# instance fields
.field protected fieldNumber:I

.field protected value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 50
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "n"    # I

    .line 55
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 56
    iput p1, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    .line 57
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "v"    # [B

    .line 62
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 63
    iput p1, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    .line 64
    iput-object p2, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    .line 65
    return-void
.end method

.method public constructor <init>(I[BII)V
    .locals 2
    .param p1, "n"    # I
    .param p2, "v"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I

    .line 72
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 73
    new-array v0, p4, [B

    .line 74
    .local v0, "b":[B
    const/4 v1, 0x0

    invoke-static {p2, p3, v0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 75
    iput p1, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    .line 76
    iput-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    .line 77
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 4
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "field"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "value"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {p0}, Lorg/jpos/iso/ISOBinaryField;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "type"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "binary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    return-object v0
.end method

.method public getFieldNumber()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 118
    iget v0, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    return-object v0
.end method

.method public pack()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 98
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Not available on Leaf"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 166
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    .line 167
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    .line 168
    invoke-interface {p1, v0}, Ljava/io/ObjectInput;->readFully([B)V

    .line 169
    return-void
.end method

.method public setFieldNumber(I)V
    .locals 0
    .param p1, "fieldNumber"    # I

    .line 85
    iput p1, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    .line 86
    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 131
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 132
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    goto :goto_0

    .line 134
    :cond_0
    move-object v0, p1

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    .line 135
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 156
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpack([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 105
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Not available on Leaf"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 112
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Not available on Leaf"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    iget v0, p0, Lorg/jpos/iso/ISOBinaryField;->fieldNumber:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 160
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 161
    iget-object v0, p0, Lorg/jpos/iso/ISOBinaryField;->value:[B

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->write([B)V

    .line 162
    return-void
.end method
