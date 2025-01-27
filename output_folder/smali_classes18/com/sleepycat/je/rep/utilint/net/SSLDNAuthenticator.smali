.class public Lcom/sleepycat/je/rep/utilint/net/SSLDNAuthenticator;
.super Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;
.source "SSLDNAuthenticator.java"

# interfaces
.implements Lcom/sleepycat/je/rep/net/SSLAuthenticator;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 0
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 41
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    .line 42
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

    .line 61
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDNAuthenticator;->validateRegex(Ljava/lang/String;)V

    .line 62
    return-void
.end method


# virtual methods
.method public isTrusted(Ljavax/net/ssl/SSLSession;)Z
    .locals 1
    .param p1, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .line 51
    invoke-virtual {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLDNAuthenticator;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peerMatches(Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    .line 29
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;->peerMatches(Ljavax/net/ssl/SSLSession;)Z

    move-result p1

    return p1
.end method
