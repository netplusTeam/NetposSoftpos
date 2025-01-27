.class public Lorg/jpos/iso/IFEMC_TCC;
.super Lorg/jpos/iso/IFE_CHAR;
.source "IFEMC_TCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Lorg/jpos/iso/IFE_CHAR;-><init>()V

    return-void
.end method


# virtual methods
.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 28
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lorg/jpos/iso/IFE_CHAR;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    return-object v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
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

    .line 34
    array-length v0, p2

    const/4 v1, 0x0

    if-le v0, p3, :cond_1

    .line 35
    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Lorg/jpos/iso/ISOUtil;->ebcdicToAsciiBytes([BII)[B

    move-result-object v0

    .line 36
    .local v0, "ch":[B
    aget-byte v2, v0, v1

    invoke-static {v2}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v2

    if-nez v2, :cond_0

    aget-byte v2, v0, v1

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 37
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/jpos/iso/IFE_CHAR;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v1

    return v1

    .line 39
    .end local v0    # "ch":[B
    :cond_1
    return v1
.end method
