.class public Lio/netty/handler/codec/http/DefaultHttpResponse;
.super Lio/netty/handler/codec/http/DefaultHttpMessage;
.source "DefaultHttpResponse.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpResponse;


# instance fields
.field private status:Lio/netty/handler/codec/http/HttpResponseStatus;


# direct methods
.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;)V
    .locals 2
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "status"    # Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 36
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;ZZ)V

    .line 37
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Lio/netty/handler/codec/http/HttpHeaders;)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "status"    # Lio/netty/handler/codec/http/HttpResponseStatus;
    .param p3, "headers"    # Lio/netty/handler/codec/http/HttpHeaders;

    .line 76
    invoke-direct {p0, p1, p3}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpHeaders;)V

    .line 77
    const-string v0, "status"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpResponse;->status:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 78
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;Z)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "status"    # Lio/netty/handler/codec/http/HttpResponseStatus;
    .param p3, "validateHeaders"    # Z

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/http/DefaultHttpResponse;-><init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;ZZ)V

    .line 48
    return-void
.end method

.method public constructor <init>(Lio/netty/handler/codec/http/HttpVersion;Lio/netty/handler/codec/http/HttpResponseStatus;ZZ)V
    .locals 1
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;
    .param p2, "status"    # Lio/netty/handler/codec/http/HttpResponseStatus;
    .param p3, "validateHeaders"    # Z
    .param p4, "singleFieldHeaders"    # Z

    .line 64
    invoke-direct {p0, p1, p3, p4}, Lio/netty/handler/codec/http/DefaultHttpMessage;-><init>(Lio/netty/handler/codec/http/HttpVersion;ZZ)V

    .line 65
    const-string v0, "status"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpResponse;->status:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 66
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpResponse;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 119
    return v1

    .line 122
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpResponse;

    .line 124
    .local v0, "other":Lio/netty/handler/codec/http/DefaultHttpResponse;
    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpResponse;->status:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/netty/handler/codec/http/HttpResponseStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getStatus()Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpResponse;->status()Lio/netty/handler/codec/http/HttpResponseStatus;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 110
    const/4 v0, 0x1

    .line 111
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpResponse;->status:Lio/netty/handler/codec/http/HttpResponseStatus;

    invoke-virtual {v2}, Lio/netty/handler/codec/http/HttpResponseStatus;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 112
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    invoke-super {p0}, Lio/netty/handler/codec/http/DefaultHttpMessage;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 113
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public bridge synthetic setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpResponse;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 0
    .param p1, "version"    # Lio/netty/handler/codec/http/HttpVersion;

    .line 99
    invoke-super {p0, p1}, Lio/netty/handler/codec/http/DefaultHttpMessage;->setProtocolVersion(Lio/netty/handler/codec/http/HttpVersion;)Lio/netty/handler/codec/http/HttpMessage;

    .line 100
    return-object p0
.end method

.method public setStatus(Lio/netty/handler/codec/http/HttpResponseStatus;)Lio/netty/handler/codec/http/HttpResponse;
    .locals 1
    .param p1, "status"    # Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 93
    const-string v0, "status"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/http/HttpResponseStatus;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpResponse;->status:Lio/netty/handler/codec/http/HttpResponseStatus;

    .line 94
    return-object p0
.end method

.method public status()Lio/netty/handler/codec/http/HttpResponseStatus;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpResponse;->status:Lio/netty/handler/codec/http/HttpResponseStatus;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lio/netty/handler/codec/http/HttpMessageUtil;->appendResponse(Ljava/lang/StringBuilder;Lio/netty/handler/codec/http/HttpResponse;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
