.class public interface abstract Lcom/auth0/jwt/interfaces/Verification;
.super Ljava/lang/Object;
.source "Verification.java"


# virtual methods
.method public abstract acceptExpiresAt(J)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract acceptIssuedAt(J)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract acceptLeeway(J)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract acceptNotBefore(J)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract build()Lcom/auth0/jwt/JWTVerifier;
.end method

.method public abstract ignoreIssuedAt()Lcom/auth0/jwt/interfaces/Verification;
.end method

.method public varargs abstract withArrayClaim(Ljava/lang/String;[Ljava/lang/Integer;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract withArrayClaim(Ljava/lang/String;[Ljava/lang/Long;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract withArrayClaim(Ljava/lang/String;[Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract withAudience([Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
.end method

.method public abstract withClaim(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract withClaim(Ljava/lang/String;Ljava/lang/Double;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract withClaim(Ljava/lang/String;Ljava/lang/Integer;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract withClaim(Ljava/lang/String;Ljava/lang/Long;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract withClaim(Ljava/lang/String;Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract withClaim(Ljava/lang/String;Ljava/util/Date;)Lcom/auth0/jwt/interfaces/Verification;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public varargs abstract withIssuer([Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
.end method

.method public abstract withJWTId(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
.end method

.method public abstract withSubject(Ljava/lang/String;)Lcom/auth0/jwt/interfaces/Verification;
.end method
