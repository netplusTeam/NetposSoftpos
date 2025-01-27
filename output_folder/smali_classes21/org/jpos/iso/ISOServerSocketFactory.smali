.class public interface abstract Lorg/jpos/iso/ISOServerSocketFactory;
.super Ljava/lang/Object;
.source "ISOServerSocketFactory.java"


# virtual methods
.method public abstract createServerSocket(I)Ljava/net/ServerSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method
