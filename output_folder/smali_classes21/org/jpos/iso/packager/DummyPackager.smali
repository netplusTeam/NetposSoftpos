.class public Lorg/jpos/iso/packager/DummyPackager;
.super Lorg/jpos/util/Log;
.source "DummyPackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOPackager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lorg/jpos/util/Log;-><init>()V

    return-void
.end method


# virtual methods
.method public createISOMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 43
    new-instance v0, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "fldNumber"    # I

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 31
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "DummyPackager.pack N/A"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 34
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "DummyPackager.unpack N/A"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 37
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "DummyPackager.unpack N/A"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
