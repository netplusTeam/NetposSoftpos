.class public final Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;
.super Lorg/apache/sshd/common/random/AbstractRandomFactory;
.source "BouncyCastleRandomFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;

.field public static final NAME:Ljava/lang/String; = "bouncycastle"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;->INSTANCE:Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    const-string v0, "bouncycastle"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/random/AbstractRandomFactory;-><init>(Ljava/lang/String;)V

    .line 34
    return-void
.end method


# virtual methods
.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 28
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandomFactory;->create()Lorg/apache/sshd/common/random/Random;

    move-result-object v0

    return-object v0
.end method

.method public create()Lorg/apache/sshd/common/random/Random;
    .locals 1

    .line 43
    new-instance v0, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/security/bouncycastle/BouncyCastleRandom;-><init>()V

    return-object v0
.end method

.method public isSupported()Z
    .locals 1

    .line 38
    invoke-static {}, Lorg/apache/sshd/common/util/security/SecurityUtils;->isBouncyCastleRegistered()Z

    move-result v0

    return v0
.end method
