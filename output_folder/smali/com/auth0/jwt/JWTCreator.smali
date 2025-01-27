.class public final Lcom/auth0/jwt/JWTCreator;
.super Ljava/lang/Object;
.source "JWTCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/auth0/jwt/JWTCreator$Builder;
    }
.end annotation


# instance fields
.field private final algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

.field private final headerJson:Ljava/lang/String;

.field private final payloadJson:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "algorithm"    # Lcom/auth0/jwt/algorithms/Algorithm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/auth0/jwt/algorithms/Algorithm;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTCreationException;
        }
    .end annotation

    .line 32
    .local p2, "headerClaims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p3, "payloadClaims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/auth0/jwt/JWTCreator;->algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

    .line 35
    :try_start_0
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>()V

    .line 36
    .local v0, "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    new-instance v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-direct {v1}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>()V

    .line 37
    .local v1, "module":Lcom/fasterxml/jackson/databind/module/SimpleModule;
    const-class v2, Lcom/auth0/jwt/impl/ClaimsHolder;

    new-instance v3, Lcom/auth0/jwt/impl/PayloadSerializer;

    invoke-direct {v3}, Lcom/auth0/jwt/impl/PayloadSerializer;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 38
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 39
    sget-object v2, Lcom/fasterxml/jackson/databind/MapperFeature;->SORT_PROPERTIES_ALPHABETICALLY:Lcom/fasterxml/jackson/databind/MapperFeature;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->configure(Lcom/fasterxml/jackson/databind/MapperFeature;Z)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 40
    invoke-virtual {v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/auth0/jwt/JWTCreator;->headerJson:Ljava/lang/String;

    .line 41
    new-instance v2, Lcom/auth0/jwt/impl/ClaimsHolder;

    invoke-direct {v2, p3}, Lcom/auth0/jwt/impl/ClaimsHolder;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValueAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/auth0/jwt/JWTCreator;->payloadJson:Ljava/lang/String;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0    # "mapper":Lcom/fasterxml/jackson/databind/ObjectMapper;
    .end local v1    # "module":Lcom/fasterxml/jackson/databind/module/SimpleModule;
    nop

    .line 45
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTCreationException;

    const-string v2, "Some of the Claims couldn\'t be converted to a valid JSON format."

    invoke-direct {v1, v2, v0}, Lcom/auth0/jwt/exceptions/JWTCreationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method synthetic constructor <init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/util/Map;Ljava/util/Map;Lcom/auth0/jwt/JWTCreator$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/auth0/jwt/algorithms/Algorithm;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Ljava/util/Map;
    .param p4, "x3"    # Lcom/auth0/jwt/JWTCreator$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTCreationException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/auth0/jwt/JWTCreator;-><init>(Lcom/auth0/jwt/algorithms/Algorithm;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$100(Lcom/auth0/jwt/JWTCreator;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/auth0/jwt/JWTCreator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/auth0/jwt/JWTCreator;->sign()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static init()Lcom/auth0/jwt/JWTCreator$Builder;
    .locals 1

    .line 54
    new-instance v0, Lcom/auth0/jwt/JWTCreator$Builder;

    invoke-direct {v0}, Lcom/auth0/jwt/JWTCreator$Builder;-><init>()V

    return-object v0
.end method

.method private sign()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/SignatureGenerationException;
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/auth0/jwt/JWTCreator;->headerJson:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, "header":Ljava/lang/String;
    iget-object v1, p0, Lcom/auth0/jwt/JWTCreator;->payloadJson:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v1

    .line 441
    .local v1, "payload":Ljava/lang/String;
    iget-object v2, p0, Lcom/auth0/jwt/JWTCreator;->algorithm:Lcom/auth0/jwt/algorithms/Algorithm;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/auth0/jwt/algorithms/Algorithm;->sign([B[B)[B

    move-result-object v2

    .line 442
    .local v2, "signatureBytes":[B
    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64URLSafeString([B)Ljava/lang/String;

    move-result-object v3

    .line 444
    .local v3, "signature":Ljava/lang/String;
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    const-string v5, "%s.%s.%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
