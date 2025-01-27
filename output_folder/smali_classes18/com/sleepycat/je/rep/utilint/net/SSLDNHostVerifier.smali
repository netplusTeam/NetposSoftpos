.class public Lcom/sleepycat/je/rep/utilint/net/SSLDNHostVerifier;
.super Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;
.source "SSLDNHostVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 47
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    .line 48
    return-void
.end method

.method public static validate(Ljava/lang/String;)V
    .locals 0
    .param p0, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 72
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDNHostVerifier;->validateRegex(Ljava/lang/String;)V

    .line 73
    return-void
.end method


# virtual methods
.method public bridge synthetic peerMatches(Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 35
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method

.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "targetHost"    # Ljava/lang/String;
    .param p2, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .line 62
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/rep/utilint/net/SSLDNHostVerifier;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method
