.class public abstract Lorg/jpos/iso/ISOComponent;
.super Ljava/lang/Object;
.source "ISOComponent.java"

# interfaces
.implements Ljava/lang/Cloneable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/PrintStream;Ljava/lang/String;)V
.end method

.method public getBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 94
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "N/A in Composite"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildren()Ljava/util/Map;
    .locals 1

    .line 108
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getComposite()Lorg/jpos/iso/ISOComponent;
    .locals 1

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFieldNumber()I
.end method

.method public getKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 78
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "N/A in Composite"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMaxField()I
    .locals 1

    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "N/A in Composite"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public pack(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 123
    invoke-virtual {p0}, Lorg/jpos/iso/ISOComponent;->pack()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 124
    return-void
.end method

.method public abstract pack()[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public set(Lorg/jpos/iso/ISOComponent;)V
    .locals 2
    .param p1, "c"    # Lorg/jpos/iso/ISOComponent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Can\'t add to Leaf"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setFieldNumber(I)V
.end method

.method public abstract setValue(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract unpack([B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract unpack(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public unset(I)V
    .locals 2
    .param p1, "fldno"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/jpos/iso/ISOException;

    const-string v1, "Can\'t remove from Leaf"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
