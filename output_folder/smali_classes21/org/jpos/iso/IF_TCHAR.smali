.class public Lorg/jpos/iso/IF_TCHAR;
.super Lorg/jpos/iso/IF_TBASE;
.source "IF_TCHAR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/jpos/iso/IF_TBASE;-><init>()V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/IF_TBASE;-><init>(ILjava/lang/String;)V

    .line 38
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "token"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lorg/jpos/iso/IF_TBASE;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 2

    .line 79
    invoke-virtual {p0}, Lorg/jpos/iso/IF_TCHAR;->getLength()I

    move-result v0

    invoke-virtual {p0}, Lorg/jpos/iso/IF_TCHAR;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/iso/IF_TCHAR;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    return-object v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 4
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 70
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jpos/iso/IF_TCHAR;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 71
    .local v1, "newoffset":I
    invoke-virtual {v0, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 72
    sub-int v2, v1, p3

    .line 73
    .local v2, "len":I
    invoke-virtual {p0, v2}, Lorg/jpos/iso/IF_TCHAR;->setLength(I)V

    .line 74
    invoke-virtual {p0}, Lorg/jpos/iso/IF_TCHAR;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    return v3
.end method
