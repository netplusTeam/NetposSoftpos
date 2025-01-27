.class public Lorg/apache/sshd/common/util/security/eddsa/SignatureEd25519;
.super Lorg/apache/sshd/common/signature/AbstractSignature;
.source "SignatureEd25519.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const-string v0, "NONEwithEdDSA"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/signature/AbstractSignature;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public verify(Lorg/apache/sshd/common/session/SessionContext;[B)Z
    .locals 5
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "sig"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    move-object v0, p2

    .line 41
    .local v0, "data":[B
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/security/eddsa/SignatureEd25519;->extractEncodedSignature([B)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 42
    .local v1, "encoding":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    if-eqz v1, :cond_0

    .line 43
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "keyType":Ljava/lang/String;
    nop

    .line 45
    const-string v3, "ssh-ed25519"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 44
    const-string v4, "Mismatched key type: %s"

    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 46
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    .line 49
    .end local v2    # "keyType":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/security/eddsa/SignatureEd25519;->doVerify([B)Z

    move-result v2

    return v2
.end method
