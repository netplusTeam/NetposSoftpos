.class Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;
.super Ljava/lang/Object;
.source "EngineFactory.java"

# interfaces
.implements Lcom/google/crypto/tink/subtle/EngineFactory$Policy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/EngineFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FipsPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<JcePrimitiveT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/subtle/EngineFactory$Policy<",
        "TJcePrimitiveT;>;"
    }
.end annotation


# instance fields
.field private final jceFactory:Lcom/google/crypto/tink/subtle/EngineWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/subtle/EngineWrapper<",
            "TJcePrimitiveT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jceFactory"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/subtle/EngineWrapper<",
            "TJcePrimitiveT;>;)V"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy<TJcePrimitiveT;>;"
    .local p1, "jceFactory":Lcom/google/crypto/tink/subtle/EngineWrapper;, "Lcom/google/crypto/tink/subtle/EngineWrapper<TJcePrimitiveT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;->jceFactory:Lcom/google/crypto/tink/subtle/EngineWrapper;

    .line 95
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/subtle/EngineWrapper;Lcom/google/crypto/tink/subtle/EngineFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/crypto/tink/subtle/EngineWrapper;
    .param p2, "x1"    # Lcom/google/crypto/tink/subtle/EngineFactory$1;

    .line 92
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy<TJcePrimitiveT;>;"
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;-><init>(Lcom/google/crypto/tink/subtle/EngineWrapper;)V

    return-void
.end method


# virtual methods
.method public getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TJcePrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy<TJcePrimitiveT;>;"
    const-string v0, "GmsCore_OpenSSL"

    const-string v1, "AndroidOpenSSL"

    const-string v2, "Conscrypt"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EngineFactory;->toProviderList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 101
    .local v0, "conscryptProviders":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    const/4 v1, 0x0

    .line 102
    .local v1, "cause":Ljava/lang/Exception;
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/Provider;

    .line 104
    .local v3, "provider":Ljava/security/Provider;
    :try_start_0
    iget-object v4, p0, Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;->jceFactory:Lcom/google/crypto/tink/subtle/EngineWrapper;

    invoke-interface {v4, p1, v3}, Lcom/google/crypto/tink/subtle/EngineWrapper;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 105
    :catch_0
    move-exception v4

    .line 106
    .local v4, "e":Ljava/lang/Exception;
    if-nez v1, :cond_0

    .line 107
    move-object v1, v4

    .line 110
    .end local v3    # "provider":Ljava/security/Provider;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "No good Provider found."

    invoke-direct {v2, v3, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getInstance(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "preferredProviders"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/security/Provider;",
            ">;)TJcePrimitiveT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 118
    .local p0, "this":Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;, "Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy<TJcePrimitiveT;>;"
    .local p2, "preferredProviders":Ljava/util/List;, "Ljava/util/List<Ljava/security/Provider;>;"
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/subtle/EngineFactory$FipsPolicy;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
