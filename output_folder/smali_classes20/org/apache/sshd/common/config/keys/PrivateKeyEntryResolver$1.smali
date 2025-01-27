.class final Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver$1;
.super Ljava/lang/Object;
.source "PrivateKeyEntryResolver.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/PrivateKeyEntryResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[B)Ljava/security/PrivateKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 41
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "IGNORING"

    return-object v0
.end method
