.class public Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilderProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;
    }
.end annotation


# instance fields
.field private keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    invoke-direct {v0}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;)Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;
    .locals 0

    iget-object p0, p0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;->keyConverter:Lorg/bouncycastle/openpgp/operator/bc/BcPGPKeyConverter;

    return-object p0
.end method


# virtual methods
.method public get(II)Lorg/bouncycastle/openpgp/operator/PGPContentVerifierBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider$BcPGPContentVerifierBuilder;-><init>(Lorg/bouncycastle/openpgp/operator/bc/BcPGPContentVerifierBuilderProvider;II)V

    return-object v0
.end method
