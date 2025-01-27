.class public Lio/netty/handler/codec/http/DefaultHttpRequest;
.super Lio/netty/handler/codec/http/DefaultHttpMessage;
.source "DefaultHttpRequest.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpRequest;


# static fields
.field private static final HASH_CODE_PRIME:I = 0x1f


# instance fields
.field private method:Lio/netty/handler/codec/http/HttpMethod;

.field private uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;)V
    .locals 1
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;

    .line 38
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/DefaultHttpRequest;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 1
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 64
    invoke-direct {p0, p1, p4}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 65
    const-string v0, "method"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpMethod;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->method:Lio/netty/handler/codec/http/HttpMethod;

    .line 66
    const-string v0, "uri"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpMethod;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "httpVersion"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "method"    # Lio/netty/handler/codec/http/HttpMethod;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "validateHeaders"    # Z

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p4, v0}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;ZZ)V

    .line 51
    const-string v0, "method"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpMethod;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->method:Lio/netty/handler/codec/http/HttpMethod;

    .line 52
    const-string v0, "uri"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 120
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpRequest;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 121
    return v1

    .line 124
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpRequest;

    .line 126
    .local v0, "other":Lio/netty/handler/codec/http/DefaultHttpRequest;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpMethod;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 128
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 126
    :goto_0
    return v1
.end method

.method public getMethod()Lio/netty/handler/codec/http/HttpMethod;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->method()Lio/netty/handler/codec/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 111
    const/4 v0, 0x1

    .line 112
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->method:Lio/netty/handler/codec/http/HttpMethod;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpMethod;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 113
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 114
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    invoke-super {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 115
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public method()Lio/netty/handler/codec/http/HttpMethod;
    .locals 1

    .line 77
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->method:Lio/netty/handler/codec/http/HttpMethod;

    return-object v0
.end method

.method public setMethod(Lio/netty/handler/codec/http/HttpMethod;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 1
    .param p1, "method"    # Lio/netty/handler/codec/http/HttpMethod;

    .line 93
    const-string v0, "method"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpMethod;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->method:Lio/netty/handler/codec/http/HttpMethod;

    .line 94
    return-object p0
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpRequest;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpRequest;

    move-result-object p1

    return-object p1
.end method

.method public setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 0
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;

    .line 105
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpMessage;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;

    .line 106
    return-object p0
.end method

.method public setUri(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpRequest;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 99
    const-string v0, "uri"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri:Ljava/lang/String;

    .line 100
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendRequest(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpRequest;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uri()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpRequest;->uri:Ljava/lang/String;

    return-object v0
.end method
