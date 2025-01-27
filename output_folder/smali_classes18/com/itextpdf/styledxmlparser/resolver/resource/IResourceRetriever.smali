.class public interface abstract Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;
.super Ljava/lang/Object;
.source "IResourceRetriever.java"


# virtual methods
.method public abstract getByteArrayByUrl(Ljava/net/URL;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
