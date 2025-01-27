.class public Lorg/jpos/iso/IFA_LLBNUM;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IFA_LLBNUM.java"


# instance fields
.field private interpreter:Lorg/jpos/iso/Interpreter;

.field private prefixer:Lorg/jpos/iso/Prefixer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 38
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    iput-object v0, p0, Lorg/jpos/iso/IFA_LLBNUM;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 39
    sget-object v0, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/IFA_LLBNUM;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 40
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "pad"    # Z

    .line 46
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 47
    iput-boolean p3, p0, Lorg/jpos/iso/IFA_LLBNUM;->pad:Z

    .line 48
    if-eqz p3, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    iput-object v0, p0, Lorg/jpos/iso/IFA_LLBNUM;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 49
    sget-object v0, Lorg/jpos/iso/AsciiPrefixer;->LL:Lorg/jpos/iso/AsciiPrefixer;

    iput-object v0, p0, Lorg/jpos/iso/IFA_LLBNUM;->prefixer:Lorg/jpos/iso/Prefixer;

    .line 50
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 98
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_LLBNUM;->getLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 6
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    .line 66
    .local v1, "len":I
    invoke-virtual {p0}, Lorg/jpos/iso/IFA_LLBNUM;->getLength()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/16 v2, 0x63

    if-gt v1, v2, :cond_0

    .line 71
    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    .line 72
    .local v2, "b":[B
    iget-object v4, p0, Lorg/jpos/iso/IFA_LLBNUM;->prefixer:Lorg/jpos/iso/Prefixer;

    add-int/lit8 v5, v1, 0x1

    shr-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x1

    invoke-interface {v4, v5, v2}, Lorg/jpos/iso/Prefixer;->encodeLength(I[B)V

    .line 73
    iget-object v4, p0, Lorg/jpos/iso/IFA_LLBNUM;->interpreter:Lorg/jpos/iso/Interpreter;

    invoke-interface {v4, v0, v2, v3}, Lorg/jpos/iso/Interpreter;->interpret(Ljava/lang/String;[BI)V

    .line 74
    return-object v2

    .line 67
    .end local v2    # "b":[B
    :cond_0
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid len "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " packing IFA_LLBNUM field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setPad(Z)V
    .locals 1
    .param p1, "pad"    # Z

    .line 54
    iput-boolean p1, p0, Lorg/jpos/iso/IFA_LLBNUM;->pad:Z

    .line 55
    if-eqz p1, :cond_0

    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->LEFT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jpos/iso/BCDInterpreter;->RIGHT_PADDED:Lorg/jpos/iso/BCDInterpreter;

    :goto_0
    iput-object v0, p0, Lorg/jpos/iso/IFA_LLBNUM;->interpreter:Lorg/jpos/iso/Interpreter;

    .line 56
    return-void
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 3
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lorg/jpos/iso/IFA_LLBNUM;->prefixer:Lorg/jpos/iso/Prefixer;

    invoke-interface {v0, p2, p3}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v0

    .line 88
    .local v0, "len":I
    iget-object v1, p0, Lorg/jpos/iso/IFA_LLBNUM;->interpreter:Lorg/jpos/iso/Interpreter;

    add-int/lit8 v2, p3, 0x2

    invoke-interface {v1, p2, v2, v0}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 89
    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    return v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lorg/jpos/iso/IFA_LLBNUM;->prefixer:Lorg/jpos/iso/Prefixer;

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Lorg/jpos/iso/IFA_LLBNUM;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lorg/jpos/iso/Prefixer;->decodeLength([BI)I

    move-result v0

    .line 95
    .local v0, "len":I
    iget-object v1, p0, Lorg/jpos/iso/IFA_LLBNUM;->interpreter:Lorg/jpos/iso/Interpreter;

    add-int/lit8 v2, v0, 0x2

    shr-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p2, v2}, Lorg/jpos/iso/IFA_LLBNUM;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, v0}, Lorg/jpos/iso/Interpreter;->uninterpret([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 96
    return-void
.end method
