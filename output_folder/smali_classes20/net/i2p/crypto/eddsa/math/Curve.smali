.class public Lnet/i2p/crypto/eddsa/math/Curve;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x104481180f8183L


# instance fields
.field private final I:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field private final d:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field private final d2:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field private final f:Lnet/i2p/crypto/eddsa/math/Field;

.field private final zeroP2:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final zeroP3:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final zeroP3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement;

.field private final zeroPrecomp:Lnet/i2p/crypto/eddsa/math/GroupElement;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Field;[BLnet/i2p/crypto/eddsa/math/FieldElement;)V
    .locals 8
    .param p1, "f"    # Lnet/i2p/crypto/eddsa/math/Field;
    .param p2, "d"    # [B
    .param p3, "I"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/Curve;->f:Lnet/i2p/crypto/eddsa/math/Field;

    .line 36
    invoke-virtual {p1, p2}, Lnet/i2p/crypto/eddsa/math/Field;->fromByteArray([B)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->d:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 37
    invoke-virtual {v0, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->d2:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 38
    iput-object p3, p0, Lnet/i2p/crypto/eddsa/math/Curve;->I:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 40
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/Field;->ZERO:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 41
    .local v0, "zero":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v7, p1, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 42
    .local v7, "one":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-static {p0, v0, v7, v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    iput-object v1, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroP2:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 43
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    invoke-static/range {v1 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    iput-object v1, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroP3:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 44
    const/4 v6, 0x1

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    iput-object v1, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroP3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 45
    invoke-static {p0, v7, v7, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    iput-object v1, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroPrecomp:Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 46
    return-void
.end method


# virtual methods
.method public createPoint([BZ)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1
    .param p1, "P"    # [B
    .param p2, "precompute"    # Z

    .line 80
    new-instance v0, Lnet/i2p/crypto/eddsa/math/GroupElement;

    invoke-direct {v0, p0, p1, p2}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;[BZ)V

    .line 81
    .local v0, "ge":Lnet/i2p/crypto/eddsa/math/GroupElement;
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 93
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 94
    return v0

    .line 95
    :cond_0
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/math/Curve;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 96
    return v2

    .line 97
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/i2p/crypto/eddsa/math/Curve;

    .line 98
    .local v1, "c":Lnet/i2p/crypto/eddsa/math/Curve;
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/Curve;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/Field;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/Curve;->d:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 99
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getD()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/Curve;->I:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 100
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getI()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 98
    :goto_0
    return v0
.end method

.method public get2D()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 57
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->d2:Lnet/i2p/crypto/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getD()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->d:Lnet/i2p/crypto/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getField()Lnet/i2p/crypto/eddsa/math/Field;
    .locals 1

    .line 49
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->f:Lnet/i2p/crypto/eddsa/math/Field;

    return-object v0
.end method

.method public getI()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 61
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->I:Lnet/i2p/crypto/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 2
    .param p1, "repr"    # Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 65
    sget-object v0, Lnet/i2p/crypto/eddsa/math/Curve$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 75
    const/4 v0, 0x0

    return-object v0

    .line 73
    :pswitch_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroPrecomp:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0

    .line 71
    :pswitch_1
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroP3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0

    .line 69
    :pswitch_2
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroP3:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0

    .line 67
    :pswitch_3
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->zeroP2:Lnet/i2p/crypto/eddsa/math/GroupElement;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hashCode()I
    .locals 2

    .line 86
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Curve;->f:Lnet/i2p/crypto/eddsa/math/Field;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/Field;->hashCode()I

    move-result v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/Curve;->d:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 87
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/Curve;->I:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 86
    return v0
.end method
