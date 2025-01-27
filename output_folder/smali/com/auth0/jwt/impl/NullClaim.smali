.class public Lcom/auth0/jwt/impl/NullClaim;
.super Ljava/lang/Object;
.source "NullClaim.java"

# interfaces
.implements Lcom/auth0/jwt/interfaces/Claim;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public as(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
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

    .line 66
    .local p1, "tClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public asArray(Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1
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

    .line 51
    .local p1, "tClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public asBoolean()Ljava/lang/Boolean;
    .locals 1

    .line 21
    const/4 v0, 0x0

    return-object v0
.end method

.method public asDate()Ljava/util/Date;
    .locals 1

    .line 46
    const/4 v0, 0x0

    return-object v0
.end method

.method public asDouble()Ljava/lang/Double;
    .locals 1

    .line 36
    const/4 v0, 0x0

    return-object v0
.end method

.method public asInt()Ljava/lang/Integer;
    .locals 1

    .line 26
    const/4 v0, 0x0

    return-object v0
.end method

.method public asList(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
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

    .line 56
    .local p1, "tClazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public asLong()Ljava/lang/Long;
    .locals 1

    .line 31
    const/4 v0, 0x0

    return-object v0
.end method

.method public asMap()Ljava/util/Map;
    .locals 1
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

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .locals 1

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public isNull()Z
    .locals 1

    .line 16
    const/4 v0, 0x1

    return v0
.end method
