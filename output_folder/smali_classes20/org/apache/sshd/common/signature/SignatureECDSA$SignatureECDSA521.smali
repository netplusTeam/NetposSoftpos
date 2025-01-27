.class public Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA521;
.super Lorg/apache/sshd/common/signature/SignatureECDSA;
.source "SignatureECDSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/signature/SignatureECDSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureECDSA521"
.end annotation


# static fields
.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "SHA512withECDSA"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    const-string v0, "SHA512withECDSA"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/signature/SignatureECDSA;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method
