.class public interface abstract Lcom/github/devnied/emvnfccard/parser/IParser;
.super Ljava/lang/Object;
.source "IParser.java"


# virtual methods
.method public abstract getId()Ljava/util/regex/Pattern;
.end method

.method public abstract parse(Lcom/github/devnied/emvnfccard/model/Application;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation
.end method
