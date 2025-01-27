.class Lcom/auth0/jwt/impl/PayloadImpl;
.super Ljava/lang/Object;
.source "PayloadImpl.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/Payload;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17060743682c9687L


# instance fields
.field private final audience:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final expiresAt:Ljava/util/Date;

.field private final issuedAt:Ljava/util/Date;

.field private final issuer:Ljava/lang/String;

.field private final jwtId:Ljava/lang/String;

.field private final notBefore:Ljava/util/Date;

.field private final objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

.field private final subject:Ljava/lang/String;

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


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)V
    .locals 1
    .param p1, "issuer"    # Ljava/lang/String;
    .param p2, "subject"    # Ljava/lang/String;
    .param p4, "expiresAt"    # Ljava/util/Date;
    .param p5, "notBefore"    # Ljava/util/Date;
    .param p6, "issuedAt"    # Ljava/util/Date;
    .param p7, "jwtId"    # Ljava/lang/String;
    .param p9, "objectReader"    # Lcom/fasterxml/jackson/databind/ObjectReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/databind/JsonNode;",
            ">;",
            "Lcom/fasterxml/jackson/databind/ObjectReader;",
            ")V"
        }
    .end annotation

    .line 30
    .local p3, "audience":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p8, "tree":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/auth0/jwt/impl/PayloadImpl;->issuer:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/auth0/jwt/impl/PayloadImpl;->subject:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/auth0/jwt/impl/PayloadImpl;->audience:Ljava/util/List;

    .line 34
    iput-object p4, p0, Lcom/auth0/jwt/impl/PayloadImpl;->expiresAt:Ljava/util/Date;

    .line 35
    iput-object p5, p0, Lcom/auth0/jwt/impl/PayloadImpl;->notBefore:Ljava/util/Date;

    .line 36
    iput-object p6, p0, Lcom/auth0/jwt/impl/PayloadImpl;->issuedAt:Ljava/util/Date;

    .line 37
    iput-object p7, p0, Lcom/auth0/jwt/impl/PayloadImpl;->jwtId:Ljava/lang/String;

    .line 38
    if-eqz p8, :cond_0

    invoke-static {p8}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->tree:Ljava/util/Map;

    .line 39
    iput-object p9, p0, Lcom/auth0/jwt/impl/PayloadImpl;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    .line 40
    return-void
.end method


# virtual methods
.method public getAudience()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->audience:Ljava/util/List;

    return-object v0
.end method

.method public getClaim(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Claim;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->tree:Ljava/util/Map;

    iget-object v1, p0, Lcom/auth0/jwt/impl/PayloadImpl;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-static {p1, v0, v1}, Lcom/auth0/jwt/impl/JsonNodeClaim;->extractClaim(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/Claim;

    move-result-object v0

    return-object v0
.end method

.method public getClaims()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/auth0/jwt/interfaces/Claim;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/auth0/jwt/impl/PayloadImpl;->tree:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 89
    .local v0, "claims":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/auth0/jwt/interfaces/Claim;>;"
    iget-object v1, p0, Lcom/auth0/jwt/impl/PayloadImpl;->tree:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/auth0/jwt/impl/PayloadImpl;->tree:Ljava/util/Map;

    iget-object v4, p0, Lcom/auth0/jwt/impl/PayloadImpl;->objectReader:Lcom/fasterxml/jackson/databind/ObjectReader;

    invoke-static {v2, v3, v4}, Lcom/auth0/jwt/impl/JsonNodeClaim;->extractClaim(Ljava/lang/String;Ljava/util/Map;Lcom/fasterxml/jackson/databind/ObjectReader;)Lcom/auth0/jwt/interfaces/Claim;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_0

    .line 92
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getExpiresAt()Ljava/util/Date;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->expiresAt:Ljava/util/Date;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->jwtId:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuedAt()Ljava/util/Date;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->issuedAt:Ljava/util/Date;

    return-object v0
.end method

.method public getIssuer()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->issuer:Ljava/lang/String;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->subject:Ljava/lang/String;

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

    .line 43
    iget-object v0, p0, Lcom/auth0/jwt/impl/PayloadImpl;->tree:Ljava/util/Map;

    return-object v0
.end method
