.class public final Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "SimpleXmlConverterFactory.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final serializer:Lorg/simpleframework/xml/Serializer;

.field private final strict:Z


# direct methods
.method private constructor <init>(Lorg/simpleframework/xml/Serializer;Z)V
    .locals 0
    .param p1, "serializer"    # Lorg/simpleframework/xml/Serializer;
    .param p2, "strict"    # Z

    .line 63
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 64
    iput-object p1, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    .line 65
    iput-boolean p2, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->strict:Z

    .line 66
    return-void
.end method

.method public static create()Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
    .locals 1

    .line 40
    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    invoke-static {v0}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->create(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
    .locals 2
    .param p0, "serializer"    # Lorg/simpleframework/xml/Serializer;

    .line 45
    new-instance v0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;-><init>(Lorg/simpleframework/xml/Serializer;Z)V

    return-object v0
.end method

.method public static createNonStrict()Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
    .locals 1

    .line 50
    new-instance v0, Lorg/simpleframework/xml/core/Persister;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/Persister;-><init>()V

    invoke-static {v0}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->createNonStrict(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static createNonStrict(Lorg/simpleframework/xml/Serializer;)Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;
    .locals 2
    .param p0, "serializer"    # Lorg/simpleframework/xml/Serializer;

    .line 56
    if-eqz p0, :cond_0

    .line 57
    new-instance v0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;-><init>(Lorg/simpleframework/xml/Serializer;Z)V

    return-object v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "serializer == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public isStrict()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->strict:Z

    return v0
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 88
    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    new-instance v0, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;

    iget-object v1, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    invoke-direct {v0, v1}, Lretrofit2/converter/simplexml/SimpleXmlRequestBodyConverter;-><init>(Lorg/simpleframework/xml/Serializer;)V

    return-object v0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 4
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 75
    instance-of v0, p1, Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return-object v0

    .line 78
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Class;

    .line 79
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v1, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;

    iget-object v2, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->serializer:Lorg/simpleframework/xml/Serializer;

    iget-boolean v3, p0, Lretrofit2/converter/simplexml/SimpleXmlConverterFactory;->strict:Z

    invoke-direct {v1, v0, v2, v3}, Lretrofit2/converter/simplexml/SimpleXmlResponseBodyConverter;-><init>(Ljava/lang/Class;Lorg/simpleframework/xml/Serializer;Z)V

    return-object v1
.end method
