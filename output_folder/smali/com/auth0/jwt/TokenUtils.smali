.class abstract Lcom/auth0/jwt/TokenUtils;
.super Ljava/lang/Object;
.source "TokenUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static splitToken(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/auth0/jwt/exceptions/JWTDecodeException;
        }
    .end annotation

    .line 15
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, "parts":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v3, :cond_0

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    new-array v1, v2, [Ljava/lang/String;

    aget-object v6, v0, v4

    aput-object v6, v1, v4

    aget-object v6, v0, v5

    aput-object v6, v1, v5

    const-string v6, ""

    aput-object v6, v1, v3

    move-object v0, v1

    .line 20
    :cond_0
    array-length v1, v0

    if-ne v1, v2, :cond_1

    .line 23
    return-object v0

    .line 21
    :cond_1
    new-instance v1, Lcom/auth0/jwt/exceptions/JWTDecodeException;

    new-array v2, v5, [Ljava/lang/Object;

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "The token was expected to have 3 parts, but got %s."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/auth0/jwt/exceptions/JWTDecodeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
