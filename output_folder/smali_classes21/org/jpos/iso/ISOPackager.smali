.class public interface abstract Lorg/jpos/iso/ISOPackager;
.super Ljava/lang/Object;
.source "ISOPackager.java"


# virtual methods
.method public abstract createISOMsg()Lorg/jpos/iso/ISOMsg;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getFieldDescription(Lorg/jpos/iso/ISOComponent;I)Ljava/lang/String;
.end method

.method public abstract pack(Lorg/jpos/iso/ISOComponent;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract unpack(Lorg/jpos/iso/ISOComponent;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract unpack(Lorg/jpos/iso/ISOComponent;Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
