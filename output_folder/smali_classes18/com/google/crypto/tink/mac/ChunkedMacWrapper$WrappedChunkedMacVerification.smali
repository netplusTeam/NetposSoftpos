.class Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;
.super Ljava/lang/Object;
.source "ChunkedMacWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/mac/ChunkedMacVerification;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/ChunkedMacWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WrappedChunkedMacVerification"
.end annotation


# instance fields
.field private final verifications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/mac/ChunkedMacVerification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "verificationEntries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/mac/ChunkedMacVerification;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "verificationEntries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/mac/ChunkedMacVerification;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;->verifications:Ljava/util/List;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Lcom/google/crypto/tink/mac/ChunkedMacWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;
    .param p2, "x1"    # Lcom/google/crypto/tink/mac/ChunkedMacWrapper$1;

    .line 44
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public update(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 60
    .local v0, "clonedData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 61
    iget-object v1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;->verifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/mac/ChunkedMacVerification;

    .line 62
    .local v2, "entry":Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 63
    invoke-interface {v2, v0}, Lcom/google/crypto/tink/mac/ChunkedMacVerification;->update(Ljava/nio/ByteBuffer;)V

    .line 64
    .end local v2    # "entry":Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    return-void
.end method

.method public verifyMac()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "MAC verification failed for all suitable keys in keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "errorSink":Ljava/security/GeneralSecurityException;
    iget-object v1, p0, Lcom/google/crypto/tink/mac/ChunkedMacWrapper$WrappedChunkedMacVerification;->verifications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/mac/ChunkedMacVerification;

    .line 74
    .local v2, "entry":Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    :try_start_0
    invoke-interface {v2}, Lcom/google/crypto/tink/mac/ChunkedMacVerification;->verifyMac()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-void

    .line 77
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/security/GeneralSecurityException;
    invoke-virtual {v0, v3}, Ljava/security/GeneralSecurityException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 81
    .end local v2    # "entry":Lcom/google/crypto/tink/mac/ChunkedMacVerification;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    goto :goto_0

    .line 83
    :cond_0
    throw v0
.end method
