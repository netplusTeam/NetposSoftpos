.class public Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
.super Ljava/io/IOException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x166db9773d0dffacL


# instance fields
.field private unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

.field private wasThrownFromInputStream:Z


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 51
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "description"
        }
    .end annotation

    .line 47
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "e"
        }
    .end annotation

    .line 63
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "description",
            "e"
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 56
    return-void
.end method

.method static invalidEndTag()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 137
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidTag()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 133
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidUtf8()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 172
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .locals 2

    .line 142
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 129
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 123
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static parseFailure()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 168
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static recursionLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 156
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static sizeLimitExceeded()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 162
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 2

    .line 115
    new-instance v0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method getThrownFromInputStream()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    return v0
.end method

.method public getUnfinishedMessage()Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    return-object v0
.end method

.method setThrownFromInputStream()V
    .locals 1

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->wasThrownFromInputStream:Z

    .line 96
    return-void
.end method

.method public setUnfinishedMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
    .locals 0
    .param p1, "unfinishedMessage"    # Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unfinishedMessage"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->unfinishedMessage:Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    .line 74
    return-object p0
.end method

.method public unwrapIOException()Ljava/io/IOException;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
