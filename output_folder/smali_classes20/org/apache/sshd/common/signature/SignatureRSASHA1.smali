.class public Lorg/apache/sshd/common/signature/SignatureRSASHA1;
.super Lorg/apache/sshd/common/signature/SignatureRSA;
.source "SignatureRSASHA1.java"


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "SHA1withRSA"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    const-string v0, "SHA1withRSA"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/signature/SignatureRSA;-><init>(Ljava/lang/String;)V

    .line 30
    return-void
.end method
