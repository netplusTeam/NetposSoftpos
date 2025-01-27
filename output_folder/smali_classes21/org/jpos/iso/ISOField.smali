.class public Lorg/jpos/iso/ISOField;
.super Lorg/jpos/iso/ISOComponent;
.source "ISOField.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Externalizable;


# static fields
.field private static final serialVersionUID:J = -0x3841571ef87f58d5L


# instance fields
.field protected fieldNumber:I

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    .line 47
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "n"    # I

    .line 52
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 53
    iput p1, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    .line 54
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "v"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 60
    iput p1, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    .line 61
    iput-object p2, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    .line 62
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 9
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 132
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v1, "]]></field>"

    const-string v2, "\"><![CDATA["

    const-string v3, "id"

    const-string v4, " "

    const-string v5, "field"

    const-string v6, "<"

    const-string v7, "=\""

    if-ltz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 137
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    const-string v8, "{"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    .line 146
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    :cond_2
    :goto_0
    return-void
.end method

.method public getBytes()[B
    .locals 2

    .line 121
    iget-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    return-object v0
.end method

.method public getFieldNumber()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 96
    iget v0, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    return-object v0
.end method

.method public pack()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 70
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

    .line 174
    invoke-interface {p1}, Ljava/io/ObjectInput;->readShort()S

    move-result v0

    iput v0, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    .line 175
    invoke-interface {p1}, Ljava/io/ObjectInput;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setFieldNumber(I)V
    .locals 0
    .param p1, "fieldNumber"    # I

    .line 158
    iput p1, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    .line 159
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

    .line 111
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    .line 115
    :goto_0
    return-void
.end method

.method public unpack([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 80
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

    .line 89
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

    .line 167
    iget v0, p0, Lorg/jpos/iso/ISOField;->fieldNumber:I

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeShort(I)V

    .line 168
    iget-object v0, p0, Lorg/jpos/iso/ISOField;->value:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeUTF(Ljava/lang/String;)V

    .line 169
    return-void
.end method
