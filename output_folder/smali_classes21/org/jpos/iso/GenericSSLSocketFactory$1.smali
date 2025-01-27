.class Lorg/jpos/iso/GenericSSLSocketFactory$1;
.super Ljava/lang/Object;
.source "GenericSSLSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jpos/iso/GenericSSLSocketFactory;->getTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/iso/GenericSSLSocketFactory;


# direct methods
.method constructor <init>(Lorg/jpos/iso/GenericSSLSocketFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/GenericSSLSocketFactory;

    .line 105
    iput-object p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory$1;->this$0:Lorg/jpos/iso/GenericSSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .line 111
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .line 114
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 107
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
