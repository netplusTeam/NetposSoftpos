.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "NTRUEncryptionKeyParameters.java"


# instance fields
.field protected final params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;


# direct methods
.method public constructor <init>(ZLorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 2
    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionKeyParameters;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUEncryptionParameters;

    return-object v0
.end method
