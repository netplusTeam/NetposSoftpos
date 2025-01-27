.class Lcom/auth0/jwt/impl/JsonNodeClaim;
.super Ljava/lang/Object;
.source "JsonNodeClaim.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/Claim;


# instance fields
.field private final data:Lcom/fasterxml/jackson/databind/JsonNode;

.field private final objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;


# direct methods
.method private constructor <init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 0
    .param p1, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p2, "objectReader"    # Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    .line 29
    iput-object p2, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 30
    return-void
.end method

.method static claimFromNode(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/Claim;
    .locals 1
    .param p0, "node"    # Lcom/fasterxml/jackson/databind/JsonNode;
    .param p1, "objectReader"    # Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 150
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/JsonNode;->isMissingNode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance v0, Lcom/auth0/jwt/impl/JsonNodeClaim;

    invoke-direct {v0, p0, p1}, Lcom/auth0/jwt/impl/JsonNodeClaim;-><init>(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectReader;)V

    return-object v0

    .line 151
    :cond_1
    :goto_0
    new-instance v0, Lcom/auth0/jwt/impl/NullClaim;

    invoke-direct {v0}, Lcom/auth0/jwt/impl/NullClaim;-><init>()V

    return-object v0
.end method

.method static extractClaim(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/Claim;
    .locals 2
    .param p0, "claimName"    # Ljava/lang/String;
    .param p2, "objectReader"    # Lcom/fasterxml/jackson/databind/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ")",
            "Lcom/auth0/jwt/interfaces/Claim;"
        }
    .end annotation

    .line 139
    .local p1, "tree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/databind/JsonNode;

    .line 140
    .local v0, "node":Lcom/fasterxml/jackson/databind/JsonNode;
    invoke-static {v0, p2}, Lcom/auth0/jwt/impl/JsonNodeClaim;->claimFromNode(Lcom/fasterxml/jackson/databind/JsonNode;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/Claim;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 120
    .local p1, "tClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v1, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t map the Claim value to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public asArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 69
    .local p1, "tClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    return-object v0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 74
    .local v0, "arr":[Ljava/lang/Object;, "[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v3, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    nop

    .line 74
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    .line 78
    .local v2, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v3, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t map the Claim\'s array contents to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 81
    .end local v1    # "i":I
    .end local v2    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :cond_1
    return-object v0
.end method

.method public asBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isBoolean()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asDate()Ljava/util/Date;
    .locals 5

    .line 59
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->canConvertToLong()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v0

    .line 63
    .local v0, "seconds":J
    new-instance v2, Ljava/util/Date;

    const-wide/16 v3, 0x3e8

    mul-long/2addr v3, v0

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method public asDouble()Ljava/lang/Double;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asInt()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asList(Ljava/lang/Class;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 86
    .local p1, "tClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/JsonNode;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 93
    :try_start_0
    iget-object v2, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v3, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v3, v1}, Lcom/fasterxml/jackson/databind/JsonNode;->get(I)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeToValue(Lcom/fasterxml/jackson/core/TreeNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    new-instance v3, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t map the Claim\'s array contents to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 98
    .end local v1    # "i":I
    .end local v2    # "e":Lcom/fasterxml/jackson/core/JsonProcessingException;
    :cond_1
    return-object v0
.end method

.method public asLong()Ljava/lang/Long;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isNumber()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public asMap()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 108
    :cond_0
    :try_start_0
    new-instance v0, Lcom/auth0/jwt/impl/JsonNodeClaim$1;

    invoke-direct {v0, p0}, Lcom/auth0/jwt/impl/JsonNodeClaim$1;-><init>(Lcom/auth0/jwt/impl/JsonNodeClaim;)V

    .line 110
    .local v0, "mapType":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v1, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    iget-object v2, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v1, v2}, Lcom/fasterxml/jackson/databind/ObjectReader;->treeAsTokens(Lcom/fasterxml/jackson/core/TreeNode;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object v1

    .line 111
    .local v1, "thisParser":Lcom/fasterxml/jackson/core/JsonParser;
    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonParser;->readValueAs(Lcom/fasterxml/jackson/core/type/TypeReference;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 112
    .end local v0    # "mapType":Lcom/fasterxml/jackson/core/type/TypeReference;, "Lcom/fasterxml/jackson/core/type/TypeReference<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v1    # "thisParser":Lcom/fasterxml/jackson/core/JsonParser;
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    const-string v2, "Couldn\'t map the Claim value to Map"

    invoke-direct {v1, v2, v0}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isTextual()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/auth0/jwt/impl/JsonNodeClaim;->data:Lcom/fasterxml/jackson/databind/JsonNode;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->asText()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 128
    const/4 v0, 0x0

    return v0
.end method
