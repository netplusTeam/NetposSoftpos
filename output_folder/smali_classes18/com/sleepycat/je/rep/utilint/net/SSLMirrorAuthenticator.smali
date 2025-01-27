.class public Lcom/sleepycat/je/rep/utilint/net/SSLMirrorAuthenticator;
.super Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;
.source "SSLMirrorAuthenticator.java"

# interfaces
.implements Lcom/sleepycat/je/rep/net/SSLAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;Z)V

    .line 42
    return-void
.end method


# virtual methods
.method public isTrusted(Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .line 51
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorAuthenticator;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peerMatches(Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorMatcher;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
