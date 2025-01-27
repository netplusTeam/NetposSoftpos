.class public interface abstract Lorg/jpos/iso/ISOChannel;
.super Ljava/lang/Object;
.source "ISOChannel.java"

# interfaces
.implements Lorg/jpos/iso/ISOSource;


# static fields
.field public static final CONNECT:I = 0x0

.field public static final RX:I = 0x2

.field public static final SIZEOF_CNT:I = 0x3

.field public static final TX:I = 0x1


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract connect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getPackager()Lorg/jpos/iso/ISOPackager;
.end method

.method public abstract isConnected()Z
.end method

.method public abstract receive()Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract send(Lorg/jpos/iso/ISOMsg;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract send([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setPackager(Lorg/jpos/iso/ISOPackager;)V
.end method

.method public abstract setUsable(Z)V
.end method
