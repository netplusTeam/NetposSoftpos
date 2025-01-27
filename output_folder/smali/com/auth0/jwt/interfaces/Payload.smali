.class public interface abstract Lcom/auth0/jwt/interfaces/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# virtual methods
.method public abstract getAudience()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClaim(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Claim;
.end method

.method public abstract getClaims()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/auth0/jwt/interfaces/Claim;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getExpiresAt()Ljava/util/Date;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getIssuedAt()Ljava/util/Date;
.end method

.method public abstract getIssuer()Ljava/lang/String;
.end method

.method public abstract getNotBefore()Ljava/util/Date;
.end method

.method public abstract getSubject()Ljava/lang/String;
.end method
