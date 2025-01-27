.class final Lio/netty/handler/codec/http/multipart/FileUploadUtil;
.super Ljava/lang/Object;
.source "FileUploadUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static compareTo(Lio/netty/handler/codec/http/multipart/FileUpload;Lio/netty/handler/codec/http/multipart/FileUpload;)I
    .locals 2
    .param p0, "upload1"    # Lio/netty/handler/codec/http/multipart/FileUpload;
    .param p1, "upload2"    # Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 31
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static equals(Lio/netty/handler/codec/http/multipart/FileUpload;Lio/netty/handler/codec/http/multipart/FileUpload;)Z
    .locals 2
    .param p0, "upload1"    # Lio/netty/handler/codec/http/multipart/FileUpload;
    .param p1, "upload2"    # Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 27
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static hashCode(Lio/netty/handler/codec/http/multipart/FileUpload;)I
    .locals 1
    .param p0, "upload"    # Lio/netty/handler/codec/http/multipart/FileUpload;

    .line 23
    invoke-interface {p0}, Lio/netty/handler/codec/http/multipart/FileUpload;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
