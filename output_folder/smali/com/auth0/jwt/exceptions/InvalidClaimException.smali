.class public Lcom/auth0/jwt/exceptions/InvalidClaimException;
.super Lcom/auth0/jwt/exceptions/JWTVerificationException;
.source "InvalidClaimException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 6
    invoke-direct {p0, p1}, Lcom/auth0/jwt/exceptions/JWTVerificationException;-><init>(Ljava/lang/String;)V

    .line 7
    return-void
.end method
