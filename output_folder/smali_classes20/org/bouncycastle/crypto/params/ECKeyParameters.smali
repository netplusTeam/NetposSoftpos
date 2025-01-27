.class public Lorg/bouncycastle/crypto/params/ECKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "ECKeyParameters.java"


# instance fields
.field params:Lorg/bouncycastle/crypto/params/ECDomainParameters;


# direct methods
.method protected constructor <init>(ZLorg/bouncycastle/crypto/params/ECDomainParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 3
    iput-object p2, p0, Lorg/bouncycastle/crypto/params/ECKeyParameters;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    return-void
.end method


# virtual methods
.method public getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/ECKeyParameters;->params:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    return-object v0
.end method
