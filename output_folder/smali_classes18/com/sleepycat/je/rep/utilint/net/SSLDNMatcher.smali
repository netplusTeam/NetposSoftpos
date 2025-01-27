.class Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;
.super Ljava/lang/Object;
.source "SSLDNMatcher.java"


# instance fields
.field private final pattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 1
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/net/InstanceParams;->getClassParams()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;->compileRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;->pattern:Ljava/util/regex/Pattern;

    .line 50
    return-void
.end method

.method private static compileRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 3
    .param p0, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "pse":Ljava/util/regex/PatternSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "pattern is invalid"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static validateRegex(Ljava/lang/String;)V
    .locals 0
    .param p0, "regex"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;->compileRegex(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 92
    return-void
.end method


# virtual methods
.method public peerMatches(Ljavax/net/ssl/SSLSession;)Z
    .locals 6
    .param p1, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .line 56
    const/4 v0, 0x0

    .line 58
    .local v0, "principal":Ljava/security/Principal;
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v2
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 61
    nop

    .line 63
    if-eqz v0, :cond_0

    .line 64
    instance-of v2, v0, Ljavax/security/auth/x500/X500Principal;

    if-eqz v2, :cond_0

    .line 65
    move-object v2, v0

    check-cast v2, Ljavax/security/auth/x500/X500Principal;

    .line 66
    .local v2, "x500Principal":Ljavax/security/auth/x500/X500Principal;
    nop

    .line 67
    const-string v3, "RFC1779"

    invoke-virtual {v2, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLDNMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 69
    .local v4, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 70
    const/4 v1, 0x1

    return v1

    .line 74
    .end local v2    # "x500Principal":Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "m":Ljava/util/regex/Matcher;
    :cond_0
    return v1

    .line 59
    :catch_0
    move-exception v2

    .line 60
    .local v2, "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    return v1
.end method
