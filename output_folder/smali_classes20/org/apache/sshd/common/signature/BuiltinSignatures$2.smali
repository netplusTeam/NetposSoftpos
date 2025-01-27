.class final enum Lorg/apache/sshd/common/signature/BuiltinSignatures$2;
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

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/signature/BuiltinSignatures$1;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/BuiltinSignatures$2;->create()Lorg/apache/sshd/common/signature/Signature;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/signature/Signature;
    .locals 1

    .line 61
    new-instance v0, Lorg/apache/sshd/common/signature/SignatureRSASHA1;

    invoke-direct {v0}, Lorg/apache/sshd/common/signature/SignatureRSASHA1;-><init>()V

    return-object v0
.end method
