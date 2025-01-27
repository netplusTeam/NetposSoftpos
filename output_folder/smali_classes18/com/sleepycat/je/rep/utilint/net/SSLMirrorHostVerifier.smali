.class public Lcom/sleepycat/je/rep/utilint/net/SSLMirrorHostVerifier;
.super Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;
.source "SSLMirrorHostVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public bridge synthetic peerMatches(Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "targetHost"    # Ljava/lang/String;
    .param p2, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .line 58
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorHostVerifier;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
