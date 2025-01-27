.class final Lio/netty/handler/ssl/Java7SslParametersUtils;
.super Ljava/lang/Object;
.source "Java7SslParametersUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static setAlgorithmConstraints(Ljavax/net/ssl/SSLParameters;Ljava/lang/Object;)V
    .locals 1
    .param p0, "sslParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "algorithmConstraints"    # Ljava/lang/Object;

    .line 36
    move-object v0, p1

    check-cast v0, Ljava/security/AlgorithmConstraints;

    invoke-virtual {p0, v0}, Ljavax/net/ssl/SSLParameters;->setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V

    .line 37
    return-void
.end method
