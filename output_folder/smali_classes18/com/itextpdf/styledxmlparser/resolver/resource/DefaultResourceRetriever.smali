.class public Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;
.super Ljava/lang/Object;
.source "DefaultResourceRetriever.java"

# interfaces
.implements Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;


# static fields
.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private resourceSizeByteLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    .line 52
    return-void
.end method


# virtual methods
.method public getByteArrayByUrl(Ljava/net/URL;)[B
    .locals 7
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    .line 102
    .local v1, "stream":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 103
    nop

    .line 107
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    return-object v0

    .line 106
    :cond_1
    :try_start_1
    invoke-static {v1}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException; {:try_start_2 .. :try_end_2} :catch_0

    .line 106
    :cond_2
    return-object v2

    .line 101
    :catchall_0
    move-exception v2

    .end local v1    # "stream":Ljava/io/InputStream;
    .end local p1    # "url":Ljava/net/URL;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 107
    .restart local v1    # "stream":Ljava/io/InputStream;
    .restart local p1    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v3

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_5
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "url":Ljava/net/URL;
    :cond_3
    :goto_0
    throw v3
    :try_end_5
    .catch Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v1    # "stream":Ljava/io/InputStream;
    .restart local p1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "ex":Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;
    sget-object v2, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    iget-wide v5, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    .line 109
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 108
    const-string v4, "Unable to retrieve resource with given URL ({0}) and resource size byte limit ({1})."

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 111
    .end local v1    # "ex":Lcom/itextpdf/styledxmlparser/resolver/resource/ReadingByteLimitException;
    return-object v0
.end method

.method public getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->urlFilter(Ljava/net/URL;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->logger:Lorg/slf4j/Logger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v2, "Resource with given URL ({0}) was filtered out."

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 88
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;

    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iget-wide v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/styledxmlparser/resolver/resource/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-object v0
.end method

.method public getResourceSizeByteLimit()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    return-wide v0
.end method

.method public setResourceSizeByteLimit(J)Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;
    .locals 0
    .param p1, "resourceSizeByteLimit"    # J

    .line 74
    iput-wide p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;->resourceSizeByteLimit:J

    .line 75
    return-object p0
.end method

.method protected urlFilter(Ljava/net/URL;)Z
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 123
    const/4 v0, 0x1

    return v0
.end method
