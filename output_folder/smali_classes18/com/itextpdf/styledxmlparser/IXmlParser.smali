.class public interface abstract Lcom/itextpdf/styledxmlparser/IXmlParser;
.super Ljava/lang/Object;
.source "IXmlParser.java"


# virtual methods
.method public abstract parse(Ljava/io/InputStream;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/node/IDocumentNode;
.end method
