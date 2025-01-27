.class public final Lcom/woleapp/netpos/contactless/util/JWTHelper;
.super Ljava/lang/Object;
.source "JWTHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0006\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007J\u0019\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a2\u0006\u0002\u0010\tJ\u0012\u0010\n\u001a\u00020\u00072\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/util/JWTHelper;",
        "",
        "()V",
        "getStormId",
        "",
        "token",
        "isAdmin",
        "",
        "isAgent",
        "(Ljava/lang/String;)Ljava/lang/Boolean;",
        "isExpired",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/woleapp/netpos/contactless/util/JWTHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/woleapp/netpos/contactless/util/JWTHelper;

    invoke-direct {v0}, Lcom/woleapp/netpos/contactless/util/JWTHelper;-><init>()V

    sput-object v0, Lcom/woleapp/netpos/contactless/util/JWTHelper;->INSTANCE:Lcom/woleapp/netpos/contactless/util/JWTHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getStormId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 9
    new-instance v0, Lcom/auth0/android/jwt/JWT;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    .line 10
    .local v0, "jwt":Lcom/auth0/android/jwt/JWT;
    invoke-virtual {v0}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v1

    const-string v2, "stormId"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/auth0/android/jwt/JWT;

    invoke-direct {v1, p0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/auth0/android/jwt/Claim;->asString()Ljava/lang/String;

    move-result-object v1

    .line 10
    :goto_0
    return-object v1
.end method

.method public static final isAdmin(Ljava/lang/String;)Z
    .locals 8
    .param p0, "token"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 29
    new-instance v0, Lcom/auth0/android/jwt/JWT;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    const-string v1, "permissions"

    invoke-virtual {v0, v1}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v0

    const-class v1, Ljava/lang/String;

    .line 30
    invoke-interface {v0, v1}, Lcom/auth0/android/jwt/Claim;->asArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 29
    nop

    .line 30
    const-string v1, "JWT(token!!).getClaim(\"p\u2026ay(String::class.java)[0]"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v0

    check-cast v2, Ljava/lang/CharSequence;

    const-string v0, ":"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 29
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 30
    const-string v2, "admin"

    invoke-static {v0, v2, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    return v0
.end method

.method public static final isAgent(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "token"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 16
    new-instance v0, Lcom/auth0/android/jwt/JWT;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "jwt":Lcom/auth0/android/jwt/JWT;
    invoke-virtual {v0}, Lcom/auth0/android/jwt/JWT;->getClaims()Ljava/util/Map;

    move-result-object v1

    const-string v2, "isAgent"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/auth0/android/jwt/JWT;

    invoke-direct {v1, p0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/auth0/android/jwt/JWT;->getClaim(Ljava/lang/String;)Lcom/auth0/android/jwt/Claim;

    move-result-object v1

    .line 18
    invoke-interface {v1}, Lcom/auth0/android/jwt/Claim;->asBoolean()Ljava/lang/Boolean;

    move-result-object v1

    .line 17
    :goto_0
    return-object v1
.end method

.method public static final isExpired(Ljava/lang/String;)Z
    .locals 5
    .param p0, "token"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 23
    new-instance v0, Lcom/auth0/android/jwt/JWT;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v0, p0}, Lcom/auth0/android/jwt/JWT;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "jwt":Lcom/auth0/android/jwt/JWT;
    invoke-virtual {v0}, Lcom/auth0/android/jwt/JWT;->getExpiresAt()Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
