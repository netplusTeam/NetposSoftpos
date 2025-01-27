.class public Lorg/jpos/iso/IF_NOP;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "IF_NOP.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    const/4 v0, 0x0

    const-string v1, "<dummy>"

    invoke-direct {p0, v0, v1}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 31
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public getMaxPackedLength()I
    .locals 1

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;

    .line 46
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[BI)I
    .locals 1
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .param p3, "offset"    # I

    .line 55
    const/4 v0, 0x0

    return v0
.end method
