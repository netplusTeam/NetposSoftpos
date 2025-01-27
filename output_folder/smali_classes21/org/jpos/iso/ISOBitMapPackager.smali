.class public abstract Lorg/jpos/iso/ISOBitMapPackager;
.super Lorg/jpos/iso/ISOFieldPackager;
.source "ISOBitMapPackager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jpos/iso/ISOFieldPackager;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "len"    # I
    .param p2, "description"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1, p2}, Lorg/jpos/iso/ISOFieldPackager;-><init>(ILjava/lang/String;)V

    .line 38
    return-void
.end method


# virtual methods
.method public createComponent(I)Lorg/jpos/iso/ISOComponent;
    .locals 1
    .param p1, "fieldNumber"    # I

    .line 40
    new-instance v0, Lorg/jpos/iso/ISOBitMap;

    invoke-direct {v0, p1}, Lorg/jpos/iso/ISOBitMap;-><init>(I)V

    return-object v0
.end method
