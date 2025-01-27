.class final enum Lorg/apache/sshd/common/signature/BuiltinSignatures$7;
.super Lorg/apache/sshd/common/signature/BuiltinSignatures;
.source "BuiltinSignatures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/signature/BuiltinSignatures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "facName"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/signature/BuiltinSignatures$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 118
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/BuiltinSignatures$7;->create()Lorg/apache/sshd/common/signature/Signature;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/signature/Signature;
    .locals 1

    .line 121
    new-instance v0, Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA521;

    invoke-direct {v0}, Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA521;-><init>()V

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 126
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isECCSupported()Z

    move-result v0

    return v0
.end method
