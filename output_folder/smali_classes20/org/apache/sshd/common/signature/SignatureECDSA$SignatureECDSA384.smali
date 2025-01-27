.class public Lorg/apache/sshd/common/signature/SignatureECDSA$SignatureECDSA384;
.super Lorg/apache/sshd/common/signature/SignatureECDSA;
.source "SignatureECDSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/signature/SignatureECDSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureECDSA384"
.end annotation


# static fields
.field public static final DEFAULT_ALGORITHM:Ljava/lang/String; = "SHA384withECDSA"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const-string v0, "SHA384withECDSA"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/signature/SignatureECDSA;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method
