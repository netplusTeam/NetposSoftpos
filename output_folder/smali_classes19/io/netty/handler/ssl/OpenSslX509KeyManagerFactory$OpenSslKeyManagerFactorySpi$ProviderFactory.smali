.class final Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;
.super Ljava/lang/Object;
.source "OpenSslX509KeyManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;
    }
.end annotation


# instance fields
.field private final aliases:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final keyManager:Ljavax/net/ssl/X509KeyManager;

.field private final password:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/X509KeyManager;",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 165
    .local p3, "aliases":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;->keyManager:Ljavax/net/ssl/X509KeyManager;

    .line 167
    iput-object p2, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;->password:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;->aliases:Ljava/lang/Iterable;

    .line 169
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;)Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;

    .line 160
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;->keyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method


# virtual methods
.method newProvider()Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .locals 4

    .line 172
    new-instance v0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;

    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;->keyManager:Ljavax/net/ssl/X509KeyManager;

    iget-object v2, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;->password:Ljava/lang/String;

    iget-object v3, p0, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory;->aliases:Ljava/lang/Iterable;

    invoke-direct {v0, v1, v2, v3}, Lio/netty/handler/ssl/OpenSslX509KeyManagerFactory$OpenSslKeyManagerFactorySpi$ProviderFactory$OpenSslPopulatedKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;Ljava/lang/Iterable;)V

    return-object v0
.end method
