.class Lcom/auth0/jwt/impl/BasicHeader;
.super Ljava/lang/Object;
.source "BasicHeader.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/Header;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40a8950ae592fca7L


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final contentType:Ljava/lang/String;

.field private final keyId:Ljava/lang/String;

.field private final objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

.field private final tree:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;
    .param p4, "keyId"    # Ljava/lang/String;
    .param p6, "objectReader"    # Lcom/fasterxml/jackson/databind/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ")V"
        }
    .end annotation

    .line 28
    .local p5, "tree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/auth0/jwt/impl/BasicHeader;->algorithm:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/auth0/jwt/impl/BasicHeader;->type:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/auth0/jwt/impl/BasicHeader;->contentType:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/auth0/jwt/impl/BasicHeader;->keyId:Ljava/lang/String;

    .line 33
    if-nez p5, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p5

    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/auth0/jwt/impl/BasicHeader;->tree:Ljava/util/Map;

    .line 34
    iput-object p6, p0, Lcom/auth0/jwt/impl/BasicHeader;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 35
    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/auth0/jwt/impl/BasicHeader;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/auth0/jwt/impl/BasicHeader;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderClaim(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Claim;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/auth0/jwt/impl/BasicHeader;->tree:Ljava/util/Map;

    iget-object v1, p0, Lcom/auth0/jwt/impl/BasicHeader;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-static {p1, v0, v1}, Lcom/auth0/jwt/impl/JsonNodeClaim;->extractClaim(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/Claim;

    move-result-object v0

    return-object v0
.end method

.method public getKeyId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/auth0/jwt/impl/BasicHeader;->keyId:Ljava/lang/String;

    return-object v0
.end method

.method getTree()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/auth0/jwt/impl/BasicHeader;->tree:Ljava/util/Map;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/auth0/jwt/impl/BasicHeader;->type:Ljava/lang/String;

    return-object v0
.end method
