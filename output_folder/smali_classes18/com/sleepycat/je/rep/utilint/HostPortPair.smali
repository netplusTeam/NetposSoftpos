.class public Lcom/sleepycat/je/rep/utilint/HostPortPair;
.super Ljava/lang/Object;
.source "HostPortPair.java"


# static fields
.field public static final SEPARATOR:Ljava/lang/String; = ":"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHostname(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "hostPortPair"    # Ljava/lang/String;

    .line 87
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 88
    .local v0, "portStartIndex":I
    if-gez v0, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 90
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 88
    :goto_0
    return-object v1
.end method

.method public static getPort(Ljava/lang/String;)I
    .locals 2
    .param p0, "hostPortPair"    # Ljava/lang/String;

    .line 97
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 98
    .local v0, "portStartIndex":I
    if-gez v0, :cond_0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    .line 99
    invoke-virtual {v1}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 100
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 98
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static getSocket(Ljava/lang/String;)Ljava/net/InetSocketAddress;
    .locals 4
    .param p0, "hostPortPair"    # Ljava/lang/String;

    .line 41
    const-string v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 46
    .local v0, "portStartIndex":I
    move-object v1, p0

    .line 47
    .local v1, "hostName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 48
    .local v2, "port":I
    if-gez v0, :cond_0

    .line 49
    sget-object v3, Lcom/sleepycat/je/rep/impl/RepParams;->DEFAULT_PORT:Lcom/sleepycat/je/config/IntConfigParam;

    invoke-virtual {v3}, Lcom/sleepycat/je/config/IntConfigParam;->getDefault()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    .line 51
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 52
    add-int/lit8 v3, v0, 0x1

    .line 53
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 55
    :goto_0
    new-instance v3, Ljava/net/InetSocketAddress;

    invoke-direct {v3, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    return-object v3

    .line 42
    .end local v0    # "portStartIndex":I
    .end local v1    # "hostName":Ljava/lang/String;
    .end local v2    # "port":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host and port pair was missing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSockets(Ljava/lang/String;)Ljava/util/Set;
    .locals 7
    .param p0, "hostPortPairs"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 67
    .local v0, "helpers":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    if-eqz p0, :cond_1

    .line 68
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 69
    .local v4, "hostPortPair":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, "hpp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 71
    invoke-static {v5}, Lcom/sleepycat/je/rep/utilint/HostPortPair;->getSocket(Ljava/lang/String;)Ljava/net/InetSocketAddress;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    .end local v4    # "hostPortPair":Ljava/lang/String;
    .end local v5    # "hpp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 76
    :cond_1
    return-object v0
.end method

.method public static getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
