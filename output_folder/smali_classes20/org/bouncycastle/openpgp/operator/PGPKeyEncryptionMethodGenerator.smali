.class public abstract Lorg/bouncycastle/openpgp/operator/PGPKeyEncryptionMethodGenerator;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract generate(I[B)Lorg/bouncycastle/bcpg/ContainedPacket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/openpgp/PGPException;
        }
    .end annotation
.end method
