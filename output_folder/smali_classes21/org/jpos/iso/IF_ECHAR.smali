.class public Lorg/jpos/iso/IF_ECHAR;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IF_ECHAR.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 33
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Lorg/jpos/iso/IF_ECHAR;->getLength()I

    move-result v0

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

    .line 47
    invoke-virtual {p1}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/jpos/iso/IF_ECHAR;->getLength()I

    move-result v1

    invoke-static {v0, v1}, Lorg/jpos/iso/ISOUtil;->strpad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->asciiToEbcdic(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/jpos/iso/IF_ECHAR;->getLength()I

    move-result v0

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAscii([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOComponent;->setValue(Ljava/lang/Object;)V

    .line 61
    invoke-virtual {p0}, Lorg/jpos/iso/IF_ECHAR;->getLength()I

    move-result v0

    return v0
.end method
