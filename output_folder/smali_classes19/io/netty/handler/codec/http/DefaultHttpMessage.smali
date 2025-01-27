.class public abstract Lio/netty/handler/codec/http/DefaultHttpMessage;
.super Lio/netty/handler/codec/http/DefaultHttpObject;
.source "DefaultHttpMessage.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpMessage;


# static fields
.field private static final HASH_CODE_PRIME:I = 0x1f


# instance fields
.field private final headers:Lio/netty/handler/codec/http/HttpHeaders;

.field private version:Lio/netty/handler/codec/http/HttpVersion;


# direct methods
.method protected constructor <init>(Lio/netty/handler/codec/http/HttpVersion;)V
    .locals 2
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;

    .line 34
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;ZZ)V

    .line 35
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 49
    invoke-direct {p0}, Lio/netty/handler/codec/http/DefaultHttpObject;-><init>()V

    .line 50
    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpVersion;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    .line 51
    const-string v0, "headers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpHeaders;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    .line 52
    return-void
.end method

.method protected constructor <init>(Lio/netty/handler/codec/http/HttpVersion;ZZ)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "validateHeaders"    # Z
    .param p3, "singleFieldHeaders"    # Z

    .line 41
    if-eqz p3, :cond_0

    new-instance v0, Lio/netty/handler/codec/http/CombinedHttpHeaders;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/http/CombinedHttpHeaders;-><init>(Z)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/handler/codec/http/DefaultHttpHeaders;

    invoke-direct {v0, p2}, Lio/netty/handler/codec/http/DefaultHttpHeaders;-><init>(Z)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 81
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 82
    return v1

    .line 85
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpMessage;

    .line 87
    .local v0, "other":Lio/netty/handler/codec/http/DefaultHttpMessage;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers()Lio/netty/handler/codec/http/HttpHeaders;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpObject;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 87
    :goto_0
    return v1
.end method

.method public getProtocolVersion()Lio/netty/handler/codec/http/HttpVersion;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->protocolVersion()Lio/netty/handler/codec/http/HttpVersion;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 72
    const/4 v0, 0x1

    .line 73
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 74
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpVersion;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 75
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Lio/netty/handler/codec/http/DefaultHttpObject;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 76
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public headers()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 1

    .line 56
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->headers:Lio/netty/handler/codec/http/HttpHeaders;

    return-object v0
.end method

.method public protocolVersion()Lio/netty/handler/codec/http/HttpVersion;
    .locals 1

    .line 67
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    return-object v0
.end method

.method public setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;

    .line 94
    const-string v0, "version"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpVersion;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpMessage;->version:Lio/netty/handler/codec/http/HttpVersion;

    .line 95
    return-object p0
.end method
