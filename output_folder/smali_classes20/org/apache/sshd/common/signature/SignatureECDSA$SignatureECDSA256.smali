.class public Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA256;
.super Lorg/apache/sshd/common/signature/SignatureECDSA;
.source "SignatureECDSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/signature/SignatureECDSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureECDSA256"
.end annotation


# static fields
.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "SHA256withECDSA"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    const-string v0, "SHA256withECDSA"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/signature/SignatureECDSA;-><init>(Ljava/lang/String;)V

    .line 45
    return-void
.end method
