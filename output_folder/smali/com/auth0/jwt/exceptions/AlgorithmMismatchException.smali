.class public Lcom/auth0/jwt/exceptions/AlgorithmMismatchException;
.super Lcom/auth0/jwt/exceptions/JWTVerificationException;
.source "AlgorithmMismatchException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 5
    invoke-direct {p0, p1}, Lcom/auth0/jwt/exceptions/JWTVerificationException;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method
