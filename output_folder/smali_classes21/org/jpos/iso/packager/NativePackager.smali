.class public Lorg/jpos/iso/packager/NativePackager;
.super Ljava/lang/Object;
.source "NativePackager.java"

# interfaces
.implements Lorg/jpos/iso/ISOPackager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createISOMsg()Lorg/jpos/iso/ISOMsg;
    .locals 1

    .line 85
    new-instance v0, Lorg/jpos/iso/ISOMsg;

    invoke-direct {v0}, Lorg/jpos/iso/ISOMsg;-><init>()V

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 75
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

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public pack(Lorg/jpos/iso/ISOComponent;)[B
    .locals 5
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 33
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    instance-of v1, p1, Lorg/jpos/iso/ISOMsg;

    if-eqz v1, :cond_0

    .line 34
    move-object v1, p1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 35
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->getPackager()Lorg/jpos/iso/ISOPackager;

    move-result-object v2

    .line 36
    .local v2, "p":Lorg/jpos/iso/ISOPackager;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V

    .line 37
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38
    .local v3, "os":Ljava/io/ObjectOutputStream;
    move-object v4, p1

    check-cast v4, Ljava/io/Externalizable;

    invoke-interface {v4, v3}, Ljava/io/Externalizable;->writeExternal(Ljava/io/ObjectOutput;)V

    .line 39
    invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->flush()V

    .line 40
    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOMsg;->setPackager(Lorg/jpos/iso/ISOPackager;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "p":Lorg/jpos/iso/ISOPackager;
    .end local v3    # "os":Ljava/io/ObjectOutputStream;
    :cond_0
    nop

    .line 45
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1

    .line 42
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .locals 3
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 51
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    instance-of v1, p1, Ljava/io/Externalizable;

    if-eqz v1, :cond_0

    .line 53
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/jpos/iso/packager/NativePackager;->unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    array-length v1, p2

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int/2addr v1, v2

    return v1
.end method

.method public unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 64
    :try_start_0
    instance-of v0, p1, Ljava/io/Externalizable;

    if-eqz v0, :cond_0

    .line 65
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 66
    .local v0, "is":Ljava/io/ObjectInputStream;
    move-object v1, p1

    check-cast v1, Ljava/io/Externalizable;

    invoke-interface {v1, v0}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "is":Ljava/io/ObjectInputStream;
    :cond_0
    nop

    .line 71
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/iso/ISOException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
