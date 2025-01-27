.class final enum Lorg/apache/sshd/common/signature/BuiltinSignatures$4;
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


# instance fields
.field private final supportHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p3, "facName"    # Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/signature/BuiltinSignatures;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/sshd/common/signature/BuiltinSignatures$1;)V

    .line 71
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object p1, p0, Lorg/apache/sshd/common/signature/BuiltinSignatures$4;->supportHolder:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 70
    invoke-virtual {p0}, Lorg/apache/sshd/common/signature/BuiltinSignatures$4;->create()Lorg/apache/sshd/common/signature/Signature;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/signature/Signature;
    .locals 1

    .line 75
    new-instance v0, Lorg/apache/sshd/common/signature/SignatureRSASHA512;

    invoke-direct {v0}, Lorg/apache/sshd/common/signature/SignatureRSASHA512;-><init>()V

    return-object v0
.end method

.method public isSupported()Z
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/apache/sshd/common/signature/BuiltinSignatures$4;->supportHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 81
    .local v0, "supported":Ljava/lang/Boolean;
    if-nez v0, :cond_1

    .line 83
    :try_start_0
    const-string v1, "SHA512withRSA"

    .line 84
    invoke-static {v1}, Lorg/apache/sshd/common/util/security/SecurityUtils;->getSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 85
    .local v1, "sig":Ljava/security/Signature;
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 88
    .end local v1    # "sig":Ljava/security/Signature;
    goto :goto_1

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 90
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v1, p0, Lorg/apache/sshd/common/signature/BuiltinSignatures$4;->supportHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 93
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method
