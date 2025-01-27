.class public final Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;
.super Ljava/lang/Object;
.source "SSLManager.kt"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/danbamitale/epmslib/comms/SSLManager;->getTrustySSLSocketFactory(Landroid/content/Context;I)Ljavax/net/ssl/SSLSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSSLManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SSLManager.kt\ncom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,206:1\n13543#2,2:207\n13543#2,2:209\n11335#2:211\n11670#2,3:212\n37#3,2:215\n*S KotlinDebug\n*F\n+ 1 SSLManager.kt\ncom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2\n*L\n66#1:207,2\n76#1:209,2\n85#1:211\n85#1:212,3\n87#1:215,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J)\u0010\u0002\u001a\u00020\u00032\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ)\u0010\n\u001a\u00020\u00032\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0008\u0001\u0012\u00020\u0006\u0018\u00010\u00052\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0016\u00a2\u0006\u0002\u0010\tJ\u0013\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0016\u00a2\u0006\u0002\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "com/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2",
        "Ljavax/net/ssl/X509TrustManager;",
        "checkClientTrusted",
        "",
        "chain",
        "",
        "Ljava/security/cert/X509Certificate;",
        "authType",
        "",
        "([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V",
        "checkServerTrusted",
        "getAcceptedIssuers",
        "()[Ljava/security/cert/X509Certificate;",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $certId:I

.field final synthetic $context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "$context"    # Landroid/content/Context;
    .param p2, "$certId"    # I

    iput-object p1, p0, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;->$context:Landroid/content/Context;

    iput p2, p0, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;->$certId:I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .line 65
    if-eqz p1, :cond_3

    move-object v0, p1

    .local v0, "it":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 66
    .local v1, "$i$a$-let-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkClientTrusted$1":I
    move-object v2, v0

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 207
    .local v3, "$i$f$forEach":I
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v2, v4

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 67
    .local v8, "$i$a$-forEach-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkClientTrusted$1$1":I
    sget-object v9, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    invoke-virtual {v9, v7}, Lcom/danbamitale/epmslib/comms/SSLManager;->isCertClient(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    invoke-static {v9, v7}, Lcom/danbamitale/epmslib/comms/SSLManager;->access$isCertKnown(Lcom/danbamitale/epmslib/comms/SSLManager;Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 68
    :cond_0
    new-instance v4, Ljava/security/cert/CertificateNotYetValidException;

    const-string v5, "Certificate is not valid"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_1
    :goto_1
    nop

    .line 207
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "$i$a$-forEach-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkClientTrusted$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 208
    :cond_2
    nop

    .line 71
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    nop

    .line 65
    .end local v0    # "it":[Ljava/security/cert/X509Certificate;
    .end local v1    # "$i$a$-let-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkClientTrusted$1":I
    nop

    .line 72
    :cond_3
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 10
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;

    .line 75
    if-eqz p1, :cond_3

    move-object v0, p1

    .local v0, "it":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .line 76
    .local v1, "$i$a$-let-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkServerTrusted$1":I
    move-object v2, v0

    .local v2, "$this$forEach$iv":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 209
    .local v3, "$i$f$forEach":I
    const/4 v4, 0x0

    array-length v5, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v6, v2, v4

    .local v6, "element$iv":Ljava/lang/Object;
    move-object v7, v6

    .local v7, "cert":Ljava/security/cert/X509Certificate;
    const/4 v8, 0x0

    .line 77
    .local v8, "$i$a$-forEach-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkServerTrusted$1$1":I
    sget-object v9, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    invoke-virtual {v9, v7}, Lcom/danbamitale/epmslib/comms/SSLManager;->isCertServer(Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    invoke-static {v9, v7}, Lcom/danbamitale/epmslib/comms/SSLManager;->access$isCertKnown(Lcom/danbamitale/epmslib/comms/SSLManager;Ljava/security/cert/X509Certificate;)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 78
    :cond_0
    new-instance v4, Ljava/security/cert/CertificateNotYetValidException;

    const-string v5, "Certificate is not valid"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :cond_1
    :goto_1
    nop

    .line 209
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "$i$a$-forEach-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkServerTrusted$1$1":I
    nop

    .end local v6    # "element$iv":Ljava/lang/Object;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    :cond_2
    nop

    .line 81
    .end local v2    # "$this$forEach$iv":[Ljava/lang/Object;
    .end local v3    # "$i$f$forEach":I
    nop

    .line 75
    .end local v0    # "it":[Ljava/security/cert/X509Certificate;
    .end local v1    # "$i$a$-let-SSLManager$getTrustySSLSocketFactory$trustManager$2$checkServerTrusted$1":I
    nop

    .line 82
    :cond_3
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 12

    .line 85
    sget-object v0, Lcom/danbamitale/epmslib/comms/SSLManager;->INSTANCE:Lcom/danbamitale/epmslib/comms/SSLManager;

    iget-object v1, p0, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;->$context:Landroid/content/Context;

    iget v2, p0, Lcom/danbamitale/epmslib/comms/SSLManager$getTrustySSLSocketFactory$trustManager$2;->$certId:I

    invoke-virtual {v0, v1, v2}, Lcom/danbamitale/epmslib/comms/SSLManager;->getTrustManagerFactory(Landroid/content/Context;I)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    const-string v1, "getTrustManagerFactory(c\u2026xt, certId).trustManagers"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    .local v0, "$this$map$iv":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 211
    .local v1, "$i$f$map":I
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v0

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .local v2, "destination$iv$iv":Ljava/util/Collection;
    move-object v3, v0

    .local v3, "$this$mapTo$iv$iv":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 212
    .local v4, "$i$f$mapTo":I
    array-length v5, v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v3, v7

    .line 213
    .local v8, "item$iv$iv":Ljava/lang/Object;
    move-object v9, v8

    check-cast v9, Ljavax/net/ssl/TrustManager;

    .local v9, "it":Ljavax/net/ssl/TrustManager;
    const/4 v10, 0x0

    .line 86
    .local v10, "$i$a$-map-SSLManager$getTrustySSLSocketFactory$trustManager$2$getAcceptedIssuers$1":I
    const-string v11, "null cannot be cast to non-null type java.security.cert.X509Certificate"

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 213
    .end local v9    # "it":Ljavax/net/ssl/TrustManager;
    .end local v10    # "$i$a$-map-SSLManager$getTrustySSLSocketFactory$trustManager$2$getAcceptedIssuers$1":I
    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 212
    .end local v8    # "item$iv$iv":Ljava/lang/Object;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 214
    :cond_0
    nop

    .end local v2    # "destination$iv$iv":Ljava/util/Collection;
    .end local v3    # "$this$mapTo$iv$iv":[Ljava/lang/Object;
    .end local v4    # "$i$f$mapTo":I
    check-cast v2, Ljava/util/List;

    .line 211
    nop

    .end local v0    # "$this$map$iv":[Ljava/lang/Object;
    .end local v1    # "$i$f$map":I
    check-cast v2, Ljava/util/Collection;

    .line 87
    move-object v0, v2

    .local v0, "$this$toTypedArray$iv":Ljava/util/Collection;
    const/4 v1, 0x0

    .line 215
    .local v1, "$i$f$toTypedArray":I
    nop

    .line 216
    .local v2, "thisCollection$iv":Ljava/util/Collection;
    new-array v3, v6, [Ljava/security/cert/X509Certificate;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0    # "$this$toTypedArray$iv":Ljava/util/Collection;
    .end local v1    # "$i$f$toTypedArray":I
    .end local v2    # "thisCollection$iv":Ljava/util/Collection;
    check-cast v3, [Ljava/security/cert/X509Certificate;

    .line 87
    return-object v3
.end method
