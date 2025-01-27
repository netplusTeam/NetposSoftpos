.class public Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;
.super Lorg/bouncycastle/jce/spec/ECKeySpec;
.source "ECPrivateKeySpec.java"


# instance fields
.field private d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/bouncycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lorg/bouncycastle/jce/spec/ECKeySpec;-><init>(Lorg/bouncycastle/jce/spec/ECParameterSpec;)V

    .line 3
    iput-object p1, p0, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public getD()Ljava/math/BigInteger;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/ECPrivateKeySpec;->d:Ljava/math/BigInteger;

    return-object v0
.end method
