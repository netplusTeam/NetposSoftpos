.class public Lio/netty/handler/codec/http/DefaultHttpObject;
.super Ljava/lang/Object;
.source "DefaultHttpObject.java"

# interfaces
.implements Lio/netty/handler/codec/http/HttpObject;


# static fields
.field private static final HASH_CODE_PRIME:I = 0x1f


# instance fields
.field private decoderResult:Lio/netty/handler/codec/DecoderResult;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lio/netty/handler/codec/DecoderResult;->SUCCESS:Lio/netty/handler/codec/DecoderResult;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    .line 28
    return-void
.end method


# virtual methods
.method public decoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Lio/netty/handler/codec/http/DefaultHttpObject;

    if-nez v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    move-object v0, p1

    check-cast v0, Lio/netty/handler/codec/http/DefaultHttpObject;

    .line 61
    .local v0, "other":Lio/netty/handler/codec/http/DefaultHttpObject;
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v1

    invoke-virtual {v0}, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getDecoderResult()Lio/netty/handler/codec/DecoderResult;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 38
    invoke-virtual {p0}, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult()Lio/netty/handler/codec/DecoderResult;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 48
    const/4 v0, 0x1

    .line 49
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 50
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public setDecoderResult(Lio/netty/handler/codec/DecoderResult;)V
    .locals 1
    .param p1, "decoderResult"    # Lio/netty/handler/codec/DecoderResult;

    .line 43
    const-string v0, "decoderResult"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/handler/codec/DecoderResult;

    iput-object v0, p0, Lio/netty/handler/codec/http/DefaultHttpObject;->decoderResult:Lio/netty/handler/codec/DecoderResult;

    .line 44
    return-void
.end method
