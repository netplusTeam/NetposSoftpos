.class final Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;
.super Ljava/lang/Object;
.source "SimpleXmlRequestBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter<",
        "TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHARSET:Ljava/lang/String; = "UTF-8"

.field private static final MEDIA_TYPE:Lokhttp3/MediaType;


# instance fields
.field private final serializer:Lorg/simpleframework/xml/Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "application/xml; charset=UTF-8"

    invoke-static {v0}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method constructor <init>(Lorg/simpleframework/xml/Serializer;)V
    .locals 0
    .param p1, "serializer"    # Lorg/simpleframework/xml/Serializer;

    .line 32
    .local p0, "this":Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;, "Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26
    .local p0, "this":Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;, "Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter<TT;>;"
    invoke-virtual {p0, p1}, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object p1

    return-object p1
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    .local p0, "this":Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;, "Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lokio/Buffer;

    invoke-direct {v0}, Lokio/Buffer;-><init>()V

    .line 40
    .local v0, "buffer":Lokio/Buffer;
    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {v0}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 41
    .local v1, "osw":Ljava/io/OutputStreamWriter;
    iget-object v2, p0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-interface {v2, p1, v1}, Lorg/simpleframework/xml/Serializer;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 42
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "osw":Ljava/io/OutputStreamWriter;
    nop

    .line 48
    sget-object v1, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-virtual {v0}, Lokio/Buffer;->readByteString()Lokio/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v1

    return-object v1

    .line 45
    :catch_0
    move-exception v1

    .line 46
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 43
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v1

    .line 44
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_0
    throw v1
.end method
