.class public interface abstract Lcom/github/devnied/emvnfccard/parser/IProvider;
.super Ljava/lang/Object;
.source "IProvider.java"


# virtual methods
.method public abstract getAt()[B
.end method

.method public abstract transceive([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation
.end method
