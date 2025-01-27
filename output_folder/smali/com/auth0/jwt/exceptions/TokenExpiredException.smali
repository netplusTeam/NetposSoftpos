.class public Lcom/auth0/jwt/exceptions/TokenExpiredException;
.super Lcom/auth0/jwt/exceptions/JWTVerificationException;
.source "TokenExpiredException.java"


# static fields
.field private static final serialVersionUID:J = -0x62364d688213aaecL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .line 8
    invoke-direct {p0, p1}, Lcom/auth0/jwt/exceptions/JWTVerificationException;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
