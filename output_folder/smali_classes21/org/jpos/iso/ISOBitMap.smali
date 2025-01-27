.class public Lorg/jpos/iso/ISOBitMap;
.super Lorg/jpos/iso/ISOComponent;
.source "ISOBitMap.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field protected fieldNumber:I

.field protected value:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "n"    # I

    .line 41
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 42
    iput p1, p0, Lorg/jpos/iso/ISOBitMap;->fieldNumber:I

    .line 43
    return-void
.end method

.method public constructor <init>(ILjava/util/BitSet;)V
    .locals 0
    .param p1, "n"    # I
    .param p2, "v"    # Ljava/util/BitSet;

    .line 49
    invoke-direct {p0}, Lorg/jpos/iso/ISOComponent;-><init>()V

    .line 50
    iput p1, p0, Lorg/jpos/iso/ISOBitMap;->fieldNumber:I

    .line 51
    iput-object p2, p0, Lorg/jpos/iso/ISOBitMap;->value:Ljava/util/BitSet;

    .line 52
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 5
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 115
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

    const-string v2, "bitmap"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\" "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "value"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lorg/jpos/iso/ISOBitMap;->value:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "type"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public getFieldNumber()I
    .locals 1

    .line 65
    iget v0, p0, Lorg/jpos/iso/ISOBitMap;->fieldNumber:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 93
    iget v0, p0, Lorg/jpos/iso/ISOBitMap;->fieldNumber:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/jpos/iso/ISOBitMap;->value:Ljava/util/BitSet;

    return-object v0
.end method

.method public pack()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 73
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Not available on Leaf"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFieldNumber(I)V
    .locals 0
    .param p1, "fieldNumber"    # I

    .line 60
    iput p1, p0, Lorg/jpos/iso/ISOBitMap;->fieldNumber:I

    .line 61
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

    .line 106
    move-object v0, p1

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lorg/jpos/iso/ISOBitMap;->value:Ljava/util/BitSet;

    .line 107
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

    .line 87
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Not available on Leaf"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
