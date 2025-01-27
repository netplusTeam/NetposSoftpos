.class final Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser$1;
.super Ljava/lang/Object;
.source "BufferPublicKeyParser.java"

# interfaces
.implements Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/buffer/keys/BufferPublicKeyParser<",
        "Ljava/security/PublicKey;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawPublicKey(Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isKeyTypeSupported(Ljava/lang/String;)Z
    .locals 1
    .param p1, "keyType"    # Ljava/lang/String;

    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    const-string v0, "EMPTY"

    return-object v0
.end method
