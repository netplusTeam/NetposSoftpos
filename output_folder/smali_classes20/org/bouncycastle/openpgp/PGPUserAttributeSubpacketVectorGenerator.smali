.class public Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;
.super Ljava/lang/Object;


# instance fields
.field private list:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;
    .locals 3

    new-instance v0, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;

    iget-object v1, p0, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    check-cast v1, [Lorg/bouncycastle/bcpg/UserAttributeSubpacket;

    invoke-direct {v0, v1}, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVector;-><init>([Lorg/bouncycastle/bcpg/UserAttributeSubpacket;)V

    return-object v0
.end method

.method public setImageAttribute(I[B)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator;->list:Ljava/util/List;

    new-instance v1, Lorg/bouncycastle/bcpg/attr/ImageAttribute;

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/bcpg/attr/ImageAttribute;-><init>(I[B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "attempt to set null image"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
