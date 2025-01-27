.class public Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
.super Ljava/lang/Object;
.source "ResourceResolver.java"


# static fields
.field public static final BASE64IDENTIFIER:Ljava/lang/String; = "base64"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BASE64_IDENTIFIER:Ljava/lang/String; = "base64"

.field public static final DATA_SCHEMA_PREFIX:Ljava/lang/String; = "data:"

.field private static final logger:Lorg/slf4j/Logger;


# instance fields
.field private imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

.field private retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

.field private uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 86
    const-class v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;-><init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)V
    .locals 1
    .param p1, "baseUri"    # Ljava/lang/String;
    .param p2, "retriever"    # Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    if-nez p1, :cond_0

    .line 130
    const-string p1, ""

    .line 132
    :cond_0
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-direct {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 133
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    .line 135
    if-nez p2, :cond_1

    .line 136
    new-instance v0, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/DefaultResourceRetriever;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    goto :goto_0

    .line 138
    :cond_1
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    .line 140
    :goto_0
    return-void
.end method

.method private isContains64Mark(Ljava/lang/String;)Z
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .line 403
    const-string v0, "base64"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private retrieveBytesFromBase64Src(Ljava/lang/String;)[B
    .locals 3
    .param p1, "src"    # Ljava/lang/String;

    .line 384
    const-string v0, "base64"

    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isContains64Mark(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 386
    :try_start_0
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 387
    .local v1, "fixedSrc":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 388
    .end local v1    # "fixedSrc":Ljava/lang/String;
    .local v0, "fixedSrc":Ljava/lang/String;
    invoke-static {v0}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 389
    .end local v0    # "fixedSrc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 392
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected createImageByUrl(Ljava/net/URL;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    invoke-interface {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getByteArrayByUrl(Ljava/net/URL;)[B

    move-result-object v0

    .line 380
    .local v0, "bytes":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {v0}, Lcom/itextpdf/io/image/ImageDataFactory;->create([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    :goto_0
    return-object v1
.end method

.method public getRetriever()Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    return-object v0
.end method

.method public isDataSrc(Ljava/lang/String;)Z
    .locals 2
    .param p1, "src"    # Ljava/lang/String;

    .line 299
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isImageTypeSupportedByImageDataFactory(Ljava/lang/String;)Z
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 331
    .local v0, "url":Ljava/net/URL;
    invoke-static {v0}, Lcom/itextpdf/io/util/UrlUtil;->getFinalURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    .line 332
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    invoke-interface {v1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getByteArrayByUrl(Ljava/net/URL;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/io/image/ImageDataFactory;->isSupportedType([B)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 333
    .end local v0    # "url":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 334
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public resetCache()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->reset()V

    .line 318
    return-void
.end method

.method public resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public retrieveBytesFromResource(Ljava/lang/String;)[B
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .line 255
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveBytesFromBase64Src(Ljava/lang/String;)[B

    move-result-object v0

    .line 256
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 257
    return-object v0

    .line 261
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 262
    .local v1, "url":Ljava/net/URL;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    invoke-interface {v2, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getByteArrayByUrl(Ljava/net/URL;)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 263
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 264
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 265
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->getBaseUri()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 264
    const-string v4, "Unable to retrieve stream with given base URI ({0}) and source path ({1})"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 266
    const/4 v2, 0x0

    return-object v2
.end method

.method public retrieveImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;
    .locals 2
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveImageExtended(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    .line 176
    .local v0, "image":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    instance-of v1, v0, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    if-eqz v1, :cond_0

    .line 177
    move-object v1, v0

    check-cast v1, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    return-object v1

    .line 179
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public retrieveImageExtended(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 5
    .param p1, "src"    # Ljava/lang/String;

    .line 190
    if-eqz p1, :cond_1

    .line 191
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isContains64Mark(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->tryResolveBase64ImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    .line 193
    .local v0, "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    if-eqz v0, :cond_0

    .line 194
    return-object v0

    .line 198
    .end local v0    # "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->tryResolveUrlImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v0

    .line 199
    .restart local v0    # "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    if-eqz v0, :cond_1

    .line 200
    return-object v0

    .line 203
    .end local v0    # "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :cond_1
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->isDataSrc(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 204
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string v2, "Unable to retrieve image with data URI {0}"

    invoke-static {v2, v1}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :cond_2
    sget-object v0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 208
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->getBaseUri()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p1, v3, v1

    .line 207
    const-string v1, "Unable to retrieve image with given base URI ({0}) and image source path ({1})"

    invoke-static {v1, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 210
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public retrieveResourceAsInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 6
    .param p1, "src"    # Ljava/lang/String;

    .line 277
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveBytesFromBase64Src(Ljava/lang/String;)[B

    move-result-object v0

    .line 278
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 279
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1

    .line 283
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 284
    .local v1, "url":Ljava/net/URL;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    invoke-interface {v2, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 285
    .end local v1    # "url":Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 287
    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->getBaseUri()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 286
    const-string v4, "Unable to retrieve stream with given base URI ({0}) and source path ({1})"

    invoke-static {v4, v3}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    const/4 v2, 0x0

    return-object v2
.end method

.method public retrieveStream(Ljava/lang/String;)[B
    .locals 5
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retrieveBytesFromResource(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->logger:Lorg/slf4j/Logger;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    .line 242
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->getBaseUri()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    .line 241
    const-string v3, "Unable to retrieve stream with given base URI ({0}) and source path ({1})"

    invoke-static {v3, v2}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 243
    const/4 v1, 0x0

    return-object v1
.end method

.method public retrieveStyleSheet(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v1, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;->getInputStreamByUrl(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public setRetriever(Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;)Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;
    .locals 0
    .param p1, "retriever"    # Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    .line 162
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->retriever:Lcom/itextpdf/styledxmlparser/resolver/resource/IResourceRetriever;

    .line 163
    return-object p0
.end method

.method protected tryResolveBase64ImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 4
    .param p1, "src"    # Ljava/lang/String;

    .line 340
    const-string v0, "base64"

    :try_start_0
    const-string v1, "\\s"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "fixedSrc":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 342
    .end local v1    # "fixedSrc":Ljava/lang/String;
    .local v0, "fixedSrc":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->getImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v1

    .line 343
    .local v1, "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    if-nez v1, :cond_0

    .line 344
    new-instance v2, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;

    invoke-static {v0}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/io/image/ImageDataFactory;->create([B)Lcom/itextpdf/io/image/ImageData;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/xobject/PdfImageXObject;-><init>(Lcom/itextpdf/io/image/ImageData;)V

    move-object v1, v2

    .line 345
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v2, v0, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->putImage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :cond_0
    return-object v1

    .line 348
    .end local v0    # "fixedSrc":Ljava/lang/String;
    .end local v1    # "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :catch_0
    move-exception v0

    .line 350
    const/4 v0, 0x0

    return-object v0
.end method

.method protected tryResolveUrlImageSource(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    .locals 4
    .param p1, "uri"    # Ljava/lang/String;

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->uriResolver:Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/resolver/resource/UriResolver;->resolveAgainstBaseUri(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 356
    .local v0, "url":Ljava/net/URL;
    invoke-static {v0}, Lcom/itextpdf/io/util/UrlUtil;->getFinalURL(Ljava/net/URL;)Ljava/net/URL;

    move-result-object v1

    move-object v0, v1

    .line 357
    invoke-virtual {v0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    .line 358
    .local v1, "imageResolvedSrc":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v2, v1}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->getImage(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v2

    .line 359
    .local v2, "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    if-nez v2, :cond_0

    .line 360
    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->createImageByUrl(Ljava/net/URL;)Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;

    move-result-object v3

    move-object v2, v3

    .line 361
    if-eqz v2, :cond_0

    .line 362
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/resolver/resource/ResourceResolver;->imageCache:Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;

    invoke-virtual {v3, v1, v2}, Lcom/itextpdf/styledxmlparser/resolver/resource/SimpleImageCache;->putImage(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    return-object v2

    .line 366
    .end local v0    # "url":Ljava/net/URL;
    .end local v1    # "imageResolvedSrc":Ljava/lang/String;
    .end local v2    # "imageXObject":Lcom/itextpdf/kernel/pdf/xobject/PdfXObject;
    :catch_0
    move-exception v0

    .line 368
    const/4 v0, 0x0

    return-object v0
.end method
