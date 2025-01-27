.class public interface abstract Lorg/osgi/service/url/URLStreamHandlerService;
.super Ljava/lang/Object;
.source "URLStreamHandlerService.java"


# virtual methods
.method public abstract equals(Ljava/net/URL;Ljava/net/URL;)Z
.end method

.method public abstract getDefaultPort()I
.end method

.method public abstract getHostAddress(Ljava/net/URL;)Ljava/net/InetAddress;
.end method

.method public abstract hashCode(Ljava/net/URL;)I
.end method

.method public abstract hostsEqual(Ljava/net/URL;Ljava/net/URL;)Z
.end method

.method public abstract openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseURL(Lorg/osgi/service/url/URLStreamHandlerSetter;Ljava/net/URL;Ljava/lang/String;II)V
.end method

.method public abstract sameFile(Ljava/net/URL;Ljava/net/URL;)Z
.end method

.method public abstract toExternalForm(Ljava/net/URL;)Ljava/lang/String;
.end method
