.class public Lorg/jpos/iso/IFMC_TCC;
.super Lorg/jpos/iso/IF_CHAR;
.source "IFMC_TCC.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lorg/jpos/iso/IF_CHAR;-><init>()V

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

    .line 25
    if-eqz p1, :cond_0

    invoke-super {p0, p1}, Lorg/jpos/iso/IF_CHAR;->pack(Lorg/jpos/iso/ISOComponent;)[B

    move-result-object v0

    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 31
    array-length v0, p2

    if-le v0, p3, :cond_1

    aget-byte v0, p2, p3

    invoke-static {v0}, Ljava/lang/Character;->isAlphabetic(I)Z

    move-result v0

    if-nez v0, :cond_0

    aget-byte v0, p2, p3

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 32
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/jpos/iso/IF_CHAR;->unpack(Lorg/jpos/iso/ISOComponent;[BI)I

    move-result v0

    return v0

    .line 34
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
