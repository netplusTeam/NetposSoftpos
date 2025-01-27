.class Lcom/auth0/android/jwt/JWTDeserializer;
.super Ljava/lang/Object;
.source "JWTDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer<",
        "Lcom/auth0/android/jwt/JWTPayload;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;
    .locals 4
    .param p1, "obj"    # Lcom/google/gson/JsonObject;
    .param p2, "claimName"    # Ljava/lang/String;

    .line 64
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsLong()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 68
    .local v0, "ms":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "obj"    # Lcom/google/gson/JsonObject;
    .param p2, "claimName"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 75
    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringOrArray(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p1, "obj"    # Lcom/google/gson/JsonObject;
    .param p2, "claimName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 48
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 49
    invoke-virtual {p1, p2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 50
    .local v1, "arrElement":Lcom/google/gson/JsonElement;
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 51
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 52
    .local v2, "jsonArr":Lcom/google/gson/JsonArray;
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v3

    .line 53
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 54
    invoke-virtual {v2, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 56
    .end local v2    # "jsonArr":Lcom/google/gson/JsonArray;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 60
    .end local v1    # "arrElement":Lcom/google/gson/JsonElement;
    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/jwt/JWTPayload;
    .locals 20
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 21
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    .line 28
    .local v1, "object":Lcom/google/gson/JsonObject;
    const-string v2, "iss"

    invoke-direct {v0, v1, v2}, Lcom/auth0/android/jwt/JWTDeserializer;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 29
    .local v2, "iss":Ljava/lang/String;
    const-string/jumbo v3, "sub"

    invoke-direct {v0, v1, v3}, Lcom/auth0/android/jwt/JWTDeserializer;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 30
    .local v12, "sub":Ljava/lang/String;
    const-string v3, "exp"

    invoke-direct {v0, v1, v3}, Lcom/auth0/android/jwt/JWTDeserializer;->getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v13

    .line 31
    .local v13, "exp":Ljava/util/Date;
    const-string v3, "nbf"

    invoke-direct {v0, v1, v3}, Lcom/auth0/android/jwt/JWTDeserializer;->getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v14

    .line 32
    .local v14, "nbf":Ljava/util/Date;
    const-string v3, "iat"

    invoke-direct {v0, v1, v3}, Lcom/auth0/android/jwt/JWTDeserializer;->getDate(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 33
    .local v15, "iat":Ljava/util/Date;
    const-string v3, "jti"

    invoke-direct {v0, v1, v3}, Lcom/auth0/android/jwt/JWTDeserializer;->getString(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 34
    .local v16, "jti":Ljava/lang/String;
    const-string v3, "aud"

    invoke-direct {v0, v1, v3}, Lcom/auth0/android/jwt/JWTDeserializer;->getStringOrArray(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v17

    .line 37
    .local v17, "aud":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v11, v3

    .line 38
    .local v11, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/auth0/android/jwt/Claim;>;"
    invoke-virtual {v1}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 39
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    new-instance v6, Lcom/auth0/android/jwt/ClaimImpl;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/JsonElement;

    invoke-direct {v6, v7}, Lcom/auth0/android/jwt/ClaimImpl;-><init>(Lcom/google/gson/JsonElement;)V

    invoke-interface {v11, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    goto :goto_0

    .line 42
    :cond_0
    new-instance v18, Lcom/auth0/android/jwt/JWTPayload;

    move-object/from16 v3, v18

    move-object v4, v2

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object/from16 v19, v11

    .end local v11    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/auth0/android/jwt/Claim;>;"
    .local v19, "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/auth0/android/jwt/Claim;>;"
    invoke-direct/range {v3 .. v11}, Lcom/auth0/android/jwt/JWTPayload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V

    return-object v18

    .line 22
    .end local v1    # "object":Lcom/google/gson/JsonObject;
    .end local v2    # "iss":Ljava/lang/String;
    .end local v12    # "sub":Ljava/lang/String;
    .end local v13    # "exp":Ljava/util/Date;
    .end local v14    # "nbf":Ljava/util/Date;
    .end local v15    # "iat":Ljava/util/Date;
    .end local v16    # "jti":Ljava/lang/String;
    .end local v17    # "aud":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "extra":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/auth0/android/jwt/Claim;>;"
    :cond_1
    new-instance v1, Lcom/auth0/android/jwt/DecodeException;

    const-string v2, "The token\'s payload had an invalid JSON format."

    invoke-direct {v1, v2}, Lcom/auth0/android/jwt/DecodeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p1, p2, p3}, Lcom/auth0/android/jwt/JWTDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/auth0/android/jwt/JWTPayload;

    move-result-object p1

    return-object p1
.end method
