.class public Lcom/auth0/jwt/impl/JWTParser;
.super Ljava/lang/Object;
.source "JWTParser.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/JWTPartsParser;


# instance fields
.field private final headerReader:Lcom/fasterxml/jackson/databind/ObjectReader;

.field private final payloadReader:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/auth0/jwt/impl/JWTParser;->getDefaultObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/auth0/jwt/impl/JWTParser;-><init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 1
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0, p1}, Lcom/auth0/jwt/impl/JWTParser;->addDeserializers(Lcom/fasterxml/jackson/databind/ObjectMapper;)V

    .line 25
    const-class v0, Lcom/auth0/jwt/interfaces/Payload;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/jwt/impl/JWTParser;->payloadReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 26
    const-class v0, Lcom/auth0/jwt/interfaces/Header;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readerFor(Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/jwt/impl/JWTParser;->headerReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 27
    return-void
.end method

.method private addDeserializers(Lcom/fasterxml/jackson/databind/ObjectMapper;)V
    .locals 4
    .param p1, "mapper"    # Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>()V

    .line 57
    .local v0, "module":Lcom/fasterxml/jackson/databind/module/SimpleModule;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->reader()Lcom/fasterxml/jackson/databind/ObjectReader;

    move-result-object v1

    .line 58
    .local v1, "reader":Lcom/fasterxml/jackson/databind/ObjectReader;
    const-class v2, Lcom/auth0/jwt/interfaces/Payload;

    new-instance v3, Lcom/auth0/jwt/impl/PayloadDeserializer;

    invoke-direct {v3, v1}, Lcom/auth0/jwt/impl/PayloadDeserializer;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;)V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 59
    const-class v2, Lcom/auth0/jwt/interfaces/Header;

    new-instance v3, Lcom/auth0/jwt/impl/HeaderDeserializer;

    invoke-direct {v3, v1}, Lcom/auth0/jwt/impl/HeaderDeserializer;-><init>(Lcom/fasterxml/jackson/databind/ObjectReader;)V

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addDeserializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonDeserializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 60
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 61
    return-void
.end method

.method private static decodeException()Lcom/auth0/jwt/exceptions/JWTDecodeException;
    .locals 1

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/auth0/jwt/impl/JWTParser;->decodeException(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object v0

    return-object v0
.end method

.method private static decodeException(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "The string \'%s\' doesn\'t have a valid JSON format."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getDefaultObjectMapper()Lcom/fasterxml/jackson/databind/ObjectMapper;
    .locals 2

    .line 64
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 65
    .local v0, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    sget-object v1, Lcom/fasterxml/jackson/databind/SerializationFeature;->FAIL_ON_EMPTY_BEANS:Lcom/fasterxml/jackson/databind/SerializationFeature;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->disable(Lcom/fasterxml/jackson/databind/SerializationFeature;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 66
    sget-object v1, Lcom/fasterxml/jackson/annotation/JsonInclude$Include;->NON_EMPTY:Lcom/fasterxml/jackson/annotation/JsonInclude$Include;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->setSerializationInclusion(Lcom/fasterxml/jackson/annotation/JsonInclude$Include;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 67
    return-object v0
.end method


# virtual methods
.method public parseHeader(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Header;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 44
    if-eqz p1, :cond_0

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JWTParser;->headerReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/jwt/interfaces/Header;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p1}, Lcom/auth0/jwt/impl/JWTParser;->decodeException(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object v1

    throw v1

    .line 45
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {}, Lcom/auth0/jwt/impl/JWTParser;->decodeException()Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object v0

    throw v0
.end method

.method public parsePayload(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Payload;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 31
    if-eqz p1, :cond_0

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JWTParser;->payloadReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->readValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/auth0/jwt/interfaces/Payload;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Ljava/io/IOException;
    invoke-static {p1}, Lcom/auth0/jwt/impl/JWTParser;->decodeException(Ljava/lang/String;)Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object v1

    throw v1

    .line 32
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    invoke-static {}, Lcom/auth0/jwt/impl/JWTParser;->decodeException()Lcom/auth0/jwt/exceptions/JWTDecodeException;

    move-result-object v0

    throw v0
.end method
