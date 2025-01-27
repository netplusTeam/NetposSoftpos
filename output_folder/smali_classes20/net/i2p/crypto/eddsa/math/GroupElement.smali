.class public Lnet/i2p/crypto/eddsa/math/GroupElement;
.super Ljava/lang/Object;
.source "GroupElement.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x8830a11ed1f53L


# instance fields
.field final T:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final X:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

.field final curve:Lnet/i2p/crypto/eddsa/math/Curve;

.field final dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

.field final precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

.field final repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;


# direct methods
.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V
    .locals 8
    .param p1, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p2, "repr"    # Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .param p3, "X"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p4, "Y"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p5, "Z"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p6, "T"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 238
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)V

    .line 239
    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)V
    .locals 2
    .param p1, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p2, "repr"    # Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .param p3, "X"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p4, "Y"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p5, "Z"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p6, "T"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p7, "precomputeDouble"    # Z

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 261
    iput-object p2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 262
    iput-object p3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 263
    iput-object p4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 264
    iput-object p5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 265
    iput-object p6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 266
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, [[Lnet/i2p/crypto/eddsa/math/GroupElement;

    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 267
    if-eqz p7, :cond_0

    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomputeDouble()[Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 268
    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;[B)V
    .locals 1
    .param p1, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p2, "s"    # [B

    .line 287
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;[BZ)V

    .line 288
    return-void
.end method

.method public constructor <init>(Lnet/i2p/crypto/eddsa/math/Curve;[BZ)V
    .locals 10
    .param p1, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p2, "s"    # [B
    .param p3, "precomputeSingleAndDouble"    # Z

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v0

    invoke-virtual {v0, p2}, Lnet/i2p/crypto/eddsa/math/Field;->fromByteArray([B)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 310
    .local v0, "y":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 313
    .local v1, "yy":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtractOne()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 316
    .local v2, "u":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getD()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->addOne()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 319
    .local v3, "v":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 322
    .local v4, "v3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 325
    .local v5, "x":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->pow22523()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 328
    invoke-virtual {v4, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 330
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    invoke-virtual {v6, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 331
    .local v6, "vxx":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v6, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    .line 332
    .local v7, "check":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNonZero()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 333
    invoke-virtual {v6, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    .line 335
    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNonZero()Z

    move-result v8

    if-nez v8, :cond_0

    .line 337
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getI()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    invoke-virtual {v5, v8}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    goto :goto_0

    .line 336
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "not a valid GroupElement"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 340
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNegative()Z

    move-result v8

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v9

    invoke-virtual {v9}, Lnet/i2p/crypto/eddsa/math/Field;->getb()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {p2, v9}, Lnet/i2p/crypto/eddsa/Utils;->bit([BI)I

    move-result v9

    if-eq v8, v9, :cond_2

    .line 341
    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->negate()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 344
    :cond_2
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    .line 345
    sget-object v8, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    iput-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 346
    iput-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 347
    iput-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 348
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v8

    iget-object v8, v8, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iput-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 349
    invoke-virtual {v5, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    iput-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 350
    if-eqz p3, :cond_3

    .line 351
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomputeSingle()[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v8

    iput-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 352
    invoke-direct {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomputeDouble()[Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v8

    iput-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    goto :goto_1

    .line 354
    :cond_3
    const/4 v8, 0x0

    move-object v9, v8

    check-cast v9, [[Lnet/i2p/crypto/eddsa/math/GroupElement;

    iput-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 355
    iput-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 357
    :goto_1
    return-void
.end method

.method public static cached(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8
    .param p0, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p1, "YpX"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "YmX"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p3, "Z"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p4, "T2d"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 172
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method private madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 11
    .param p1, "q"    # Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 681
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_1

    .line 683
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_0

    .line 687
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 688
    .local v0, "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 689
    .local v1, "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 690
    .local v2, "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 691
    .local v3, "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 692
    .local v4, "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 693
    .local v5, "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v9

    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v6

    return-object v6

    .line 684
    .end local v0    # "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v1    # "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v2    # "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v3    # "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v4    # "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v5    # "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 682
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private msub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 11
    .param p1, "q"    # Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 710
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_1

    .line 712
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_0

    .line 716
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 717
    .local v0, "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 718
    .local v1, "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 719
    .local v2, "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 720
    .local v3, "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 721
    .local v4, "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 722
    .local v5, "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v9

    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v10

    invoke-static {v6, v7, v8, v9, v10}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v6

    return-object v6

    .line 713
    .end local v0    # "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v1    # "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v2    # "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v3    # "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v4    # "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v5    # "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 711
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8
    .param p0, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p1, "X"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "Y"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p3, "Z"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p4, "T"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 136
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P1P1:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method public static p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8
    .param p0, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p1, "X"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "Y"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p3, "Z"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 77
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method public static p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 6
    .param p0, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p1, "X"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "Y"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p3, "Z"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p4, "T"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 96
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public static p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 9
    .param p0, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p1, "X"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "Y"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p3, "Z"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p4, "T"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p5, "precomputeDoubleOnly"    # Z

    .line 117
    new-instance v8, Lnet/i2p/crypto/eddsa/math/GroupElement;

    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)V

    return-object v8
.end method

.method public static precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8
    .param p0, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;
    .param p1, "ypx"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p2, "ymx"    # Lnet/i2p/crypto/eddsa/math/FieldElement;
    .param p3, "xy2d"    # Lnet/i2p/crypto/eddsa/math/FieldElement;

    .line 153
    new-instance v7, Lnet/i2p/crypto/eddsa/math/GroupElement;

    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;-><init>(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)V

    return-object v7
.end method

.method private precomputeDouble()[Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 12

    .line 571
    const/16 v0, 0x8

    new-array v1, v0, [Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 572
    .local v1, "dblPrecmp":[Lnet/i2p/crypto/eddsa/math/GroupElement;
    move-object v2, p0

    .line 573
    .local v2, "Bi":Lnet/i2p/crypto/eddsa/math/GroupElement;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 574
    iget-object v4, v2, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 575
    .local v4, "recip":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v5, v2, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 576
    .local v5, "x":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v6, v2, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v6, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 577
    .local v6, "y":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v6, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    invoke-virtual {v6, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v9

    invoke-virtual {v5, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v10

    iget-object v11, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v11}, Lnet/i2p/crypto/eddsa/math/Curve;->get2D()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v11

    invoke-virtual {v10, v11}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    aput-object v7, v1, v3

    .line 579
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    invoke-virtual {p0, v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    invoke-virtual {v7}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    .line 573
    .end local v4    # "recip":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v5    # "x":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v6    # "y":Lnet/i2p/crypto/eddsa/math/FieldElement;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 581
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method private precomputeSingle()[[Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 14

    .line 545
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    const-class v1, Lnet/i2p/crypto/eddsa/math/GroupElement;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 547
    .local v0, "precmp":[[Lnet/i2p/crypto/eddsa/math/GroupElement;
    move-object v1, p0

    .line 548
    .local v1, "Bi":Lnet/i2p/crypto/eddsa/math/GroupElement;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_2

    .line 549
    move-object v3, v1

    .line 550
    .local v3, "Bij":Lnet/i2p/crypto/eddsa/math/GroupElement;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    const/16 v5, 0x8

    if-ge v4, v5, :cond_0

    .line 551
    iget-object v5, v3, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 552
    .local v5, "recip":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v6, v3, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v6, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 553
    .local v6, "x":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v7, v3, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v7, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    .line 554
    .local v7, "y":Lnet/i2p/crypto/eddsa/math/FieldElement;
    aget-object v8, v0, v2

    iget-object v9, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v7, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v10

    invoke-virtual {v7, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v11

    invoke-virtual {v6, v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v12

    iget-object v13, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v13}, Lnet/i2p/crypto/eddsa/math/Curve;->get2D()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v13

    invoke-virtual {v12, v13}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v12

    invoke-static {v9, v10, v11, v12}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v9

    aput-object v9, v8, v4

    .line 555
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v8

    invoke-virtual {v8}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    .line 550
    .end local v5    # "recip":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v6    # "x":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v7    # "y":Lnet/i2p/crypto/eddsa/math/FieldElement;
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 558
    .end local v4    # "j":I
    :cond_0
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_2
    if-ge v4, v5, :cond_1

    .line 559
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v6

    invoke-virtual {v1, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v6

    invoke-virtual {v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    .line 558
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 548
    .end local v3    # "Bij":Lnet/i2p/crypto/eddsa/math/GroupElement;
    .end local v4    # "k":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v2    # "i":I
    :cond_2
    return-object v0

    nop

    :array_0
    .array-data 4
        0x20
        0x8
    .end array-data
.end method

.method static slide([B)[B
    .locals 8
    .param p0, "a"    # [B

    .line 991
    const/16 v0, 0x100

    new-array v1, v0, [B

    .line 994
    .local v1, "r":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_0

    .line 995
    shr-int/lit8 v4, v2, 0x3

    aget-byte v4, p0, v4

    and-int/lit8 v5, v2, 0x7

    shr-int/2addr v4, v5

    and-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 994
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 999
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 1000
    aget-byte v4, v1, v2

    if-eqz v4, :cond_4

    .line 1001
    const/4 v4, 0x1

    .local v4, "b":I
    :goto_2
    const/4 v5, 0x6

    if-gt v4, v5, :cond_4

    add-int v5, v2, v4

    if-ge v5, v0, :cond_4

    .line 1003
    add-int v5, v2, v4

    aget-byte v5, v1, v5

    if-eqz v5, :cond_3

    .line 1004
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    const/16 v6, 0xf

    const/4 v7, 0x0

    if-gt v5, v6, :cond_1

    .line 1005
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 1006
    add-int v5, v2, v4

    aput-byte v7, v1, v5

    goto :goto_4

    .line 1007
    :cond_1
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    sub-int/2addr v5, v6

    const/16 v6, -0xf

    if-lt v5, v6, :cond_4

    .line 1008
    aget-byte v5, v1, v2

    add-int v6, v2, v4

    aget-byte v6, v1, v6

    shl-int/2addr v6, v4

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    .line 1009
    add-int v5, v2, v4

    .local v5, "k":I
    :goto_3
    if-ge v5, v0, :cond_3

    .line 1010
    aget-byte v6, v1, v5

    if-nez v6, :cond_2

    .line 1011
    aput-byte v3, v1, v5

    .line 1012
    goto :goto_4

    .line 1014
    :cond_2
    aput-byte v7, v1, v5

    .line 1009
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1001
    .end local v5    # "k":I
    :cond_3
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 999
    .end local v4    # "b":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1023
    .end local v2    # "i":I
    :cond_5
    return-object v1
.end method

.method static toRadix16([B)[B
    .locals 5
    .param p0, "a"    # [B

    .line 872
    const/16 v0, 0x40

    new-array v0, v0, [B

    .line 875
    .local v0, "e":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 876
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x0

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 877
    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p0, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 875
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 881
    :cond_0
    const/4 v2, 0x0

    .line 882
    .local v2, "carry":I
    const/4 v1, 0x0

    :goto_1
    const/16 v3, 0x3f

    if-ge v1, v3, :cond_1

    .line 883
    aget-byte v3, v0, v1

    add-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 884
    aget-byte v3, v0, v1

    add-int/lit8 v3, v3, 0x8

    .line 885
    .end local v2    # "carry":I
    .local v3, "carry":I
    shr-int/lit8 v2, v3, 0x4

    .line 886
    .end local v3    # "carry":I
    .restart local v2    # "carry":I
    aget-byte v3, v0, v1

    shl-int/lit8 v4, v2, 0x4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 882
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 888
    :cond_1
    aget-byte v4, v0, v3

    add-int/2addr v4, v2

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 890
    return-object v0
.end method

.method private toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 7
    .param p1, "repr"    # Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    .line 489
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 536
    :pswitch_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 522
    :pswitch_1
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 526
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 524
    :pswitch_2
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-static {v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 509
    :pswitch_3
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2

    .line 519
    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 517
    :pswitch_5
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 515
    :pswitch_6
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 513
    :pswitch_7
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Z)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 511
    :pswitch_8
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 529
    :pswitch_9
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3

    .line 533
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 531
    :pswitch_a
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cached(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 498
    :pswitch_b
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_4

    .line 506
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 504
    :pswitch_c
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/Curve;->get2D()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cached(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 502
    :pswitch_d
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-static {v0, v1, v2, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p3(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 500
    :pswitch_e
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-static {v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 491
    :pswitch_f
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_5

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 493
    :pswitch_10
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-static {v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p2(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_b
        :pswitch_9
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x3
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method public add(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 12
    .param p1, "q"    # Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 752
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_1

    .line 754
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 759
    .local v0, "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 760
    .local v1, "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 761
    .local v2, "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 762
    .local v3, "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 763
    .local v4, "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v6, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 764
    .local v5, "ZZ":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v5, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 765
    .local v6, "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v9

    invoke-virtual {v6, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v10

    invoke-virtual {v6, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    return-object v7

    .line 755
    .end local v0    # "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v1    # "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v2    # "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v3    # "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v4    # "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v5    # "ZZ":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v6    # "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 753
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 5
    .param p1, "u"    # Lnet/i2p/crypto/eddsa/math/GroupElement;
    .param p2, "b"    # I

    .line 906
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v2, p2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v2, v3, p2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4, p2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->cmov(Lnet/i2p/crypto/eddsa/math/FieldElement;I)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 10

    .line 618
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 631
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 622
    :pswitch_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 623
    .local v0, "XX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 624
    .local v1, "YY":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->squareAndDouble()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 625
    .local v2, "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 626
    .local v3, "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 627
    .local v4, "AA":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 628
    .local v5, "Yn":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 629
    .local v6, "Zn":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    invoke-virtual {v2, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v9

    invoke-static {v7, v8, v5, v6, v9}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    return-object v7

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public doubleScalarMultiplyVariableTime(Lnet/i2p/crypto/eddsa/math/GroupElement;[B[B)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 8
    .param p1, "A"    # Lnet/i2p/crypto/eddsa/math/GroupElement;
    .param p2, "a"    # [B
    .param p3, "b"    # [B

    .line 1039
    invoke-static {p2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->slide([B)[B

    move-result-object v0

    .line 1040
    .local v0, "aslide":[B
    invoke-static {p3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->slide([B)[B

    move-result-object v1

    .line 1042
    .local v1, "bslide":[B
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    sget-object v3, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    .line 1045
    .local v2, "r":Lnet/i2p/crypto/eddsa/math/GroupElement;
    const/16 v3, 0xff

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    .line 1046
    aget-byte v4, v0, v3

    if-nez v4, :cond_1

    aget-byte v4, v1, v3

    if-eqz v4, :cond_0

    goto :goto_1

    .line 1045
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1049
    :cond_1
    :goto_1
    if-ltz v3, :cond_6

    .line 1050
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    .line 1052
    .local v4, "t":Lnet/i2p/crypto/eddsa/math/GroupElement;
    aget-byte v5, v0, v3

    if-lez v5, :cond_2

    .line 1053
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v5

    iget-object v6, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-byte v7, v0, v3

    div-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    goto :goto_2

    .line 1054
    :cond_2
    aget-byte v5, v0, v3

    if-gez v5, :cond_3

    .line 1055
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v5

    iget-object v6, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-byte v7, v0, v3

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->msub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    .line 1058
    :cond_3
    :goto_2
    aget-byte v5, v1, v3

    if-lez v5, :cond_4

    .line 1059
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v5

    iget-object v6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-byte v7, v1, v3

    div-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    goto :goto_3

    .line 1060
    :cond_4
    aget-byte v5, v1, v3

    if-gez v5, :cond_5

    .line 1061
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v5

    iget-object v6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->dblPrecmp:[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-byte v7, v1, v3

    neg-int v7, v7

    div-int/lit8 v7, v7, 0x2

    aget-object v6, v6, v7

    invoke-direct {v5, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->msub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    .line 1064
    :cond_5
    :goto_3
    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    .line 1049
    .end local v4    # "t":Lnet/i2p/crypto/eddsa/math/GroupElement;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 1067
    :cond_6
    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;

    .line 817
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 818
    return v0

    .line 819
    :cond_0
    instance-of v1, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 820
    return v2

    .line 821
    :cond_1
    move-object v1, p1

    check-cast v1, Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 822
    .local v1, "ge":Lnet/i2p/crypto/eddsa/math/GroupElement;
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 824
    :try_start_0
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-direct {v1, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 827
    goto :goto_0

    .line 825
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/RuntimeException;
    return v2

    .line 829
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    sget-object v3, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 859
    :pswitch_0
    return v2

    .line 845
    :pswitch_1
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    return v0

    .line 842
    :pswitch_2
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 848
    :pswitch_3
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 849
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    return v0

    .line 851
    :cond_5
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 852
    .local v3, "x3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 853
    .local v4, "y3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v6, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 854
    .local v5, "t3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v6, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v6, v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 855
    .local v6, "x4":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v7, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v8, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v7, v8}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v7

    .line 856
    .local v7, "y4":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v8, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v9, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v8, v9}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    .line 857
    .local v8, "t4":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {v5, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    return v0

    .line 833
    .end local v3    # "x3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v4    # "y3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v5    # "t3":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v6    # "x4":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v7    # "y4":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v8    # "t4":Lnet/i2p/crypto/eddsa/math/FieldElement;
    :pswitch_4
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 834
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    move v0, v2

    :goto_4
    return v0

    .line 836
    :cond_8
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v4, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 837
    .local v3, "x1":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 838
    .local v4, "y1":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v5, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v6, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 839
    .local v5, "x2":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v6, v1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v6, v7}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 840
    .local v6, "y2":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getCurve()Lnet/i2p/crypto/eddsa/math/Curve;
    .locals 1

    .line 365
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    return-object v0
.end method

.method public getRepresentation()Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;
    .locals 1

    .line 374
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    return-object v0
.end method

.method public getT()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 414
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getX()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 384
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getY()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 394
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    return-object v0
.end method

.method public getZ()Lnet/i2p/crypto/eddsa/math/FieldElement;
    .locals 1

    .line 404
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 812
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public isOnCurve()Z
    .locals 1

    .line 1075
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->isOnCurve(Lnet/i2p/crypto/eddsa/math/Curve;)Z

    move-result v0

    return v0
.end method

.method public isOnCurve(Lnet/i2p/crypto/eddsa/math/Curve;)Z
    .locals 7
    .param p1, "curve"    # Lnet/i2p/crypto/eddsa/math/Curve;

    .line 1084
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1096
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->isOnCurve(Lnet/i2p/crypto/eddsa/math/Curve;)Z

    move-result v0

    return v0

    .line 1087
    :pswitch_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 1088
    .local v0, "recip":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 1089
    .local v1, "x":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v2, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 1090
    .local v2, "y":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 1091
    .local v3, "xx":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->square()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 1092
    .local v4, "yy":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getD()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 1093
    .local v5, "dxxyy":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {p1}, Lnet/i2p/crypto/eddsa/math/Curve;->getField()Lnet/i2p/crypto/eddsa/math/Field;

    move-result-object v6

    iget-object v6, v6, Lnet/i2p/crypto/eddsa/math/Field;->ONE:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v6, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    invoke-virtual {v6, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public negate()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 2

    .line 805
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_0

    .line 807
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->sub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3PrecomputeDouble()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0

    .line 806
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public scalarMultiply([B)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 6
    .param p1, "a"    # [B

    .line 960
    invoke-static {p1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRadix16([B)[B

    move-result-object v0

    .line 962
    .local v0, "e":[B
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    sget-object v2, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    .line 963
    .local v1, "h":Lnet/i2p/crypto/eddsa/math/GroupElement;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    .line 964
    div-int/lit8 v3, v2, 0x2

    aget-byte v4, v0, v2

    invoke-virtual {p0, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->select(II)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    .line 965
    .local v3, "t":Lnet/i2p/crypto/eddsa/math/GroupElement;
    invoke-direct {v1, v3}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    .line 963
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 968
    .end local v3    # "t":Lnet/i2p/crypto/eddsa/math/GroupElement;
    :cond_0
    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->dbl()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    invoke-virtual {v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    .line 970
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    .line 971
    div-int/lit8 v4, v2, 0x2

    aget-byte v5, v0, v2

    invoke-virtual {p0, v4, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->select(II)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    .line 972
    .local v4, "t":Lnet/i2p/crypto/eddsa/math/GroupElement;
    invoke-direct {v1, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->madd(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v5

    invoke-virtual {v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v1

    .line 970
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 975
    .end local v4    # "t":Lnet/i2p/crypto/eddsa/math/GroupElement;
    :cond_1
    return-object v1
.end method

.method select(II)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 7
    .param p1, "pos"    # I
    .param p2, "b"    # I

    .line 925
    invoke-static {p2}, Lnet/i2p/crypto/eddsa/Utils;->negative(I)I

    move-result v0

    .line 927
    .local v0, "bnegative":I
    neg-int v1, v0

    and-int/2addr v1, p2

    const/4 v2, 0x1

    shl-int/2addr v1, v2

    sub-int v1, p2, v1

    .line 930
    .local v1, "babs":I
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    sget-object v4, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->PRECOMP:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v3, v4}, Lnet/i2p/crypto/eddsa/math/Curve;->getZero(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v4, v4, p1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 931
    invoke-static {v1, v2}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    iget-object v4, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v4, v4, p1

    aget-object v2, v4, v2

    .line 932
    const/4 v4, 0x2

    invoke-static {v1, v4}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v5

    invoke-virtual {v3, v2, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    .line 933
    const/4 v4, 0x3

    invoke-static {v1, v4}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    .line 934
    const/4 v4, 0x4

    invoke-static {v1, v4}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    .line 935
    const/4 v4, 0x5

    invoke-static {v1, v4}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    .line 936
    const/4 v4, 0x6

    invoke-static {v1, v4}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    .line 937
    const/4 v4, 0x7

    invoke-static {v1, v4}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->precmp:[[Lnet/i2p/crypto/eddsa/math/GroupElement;

    aget-object v3, v3, p1

    aget-object v3, v3, v4

    .line 938
    const/16 v4, 0x8

    invoke-static {v1, v4}, Lnet/i2p/crypto/eddsa/Utils;->equal(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v2

    .line 940
    .local v2, "t":Lnet/i2p/crypto/eddsa/math/GroupElement;
    iget-object v3, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    iget-object v4, v2, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, v2, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v6, v2, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->negate()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lnet/i2p/crypto/eddsa/math/GroupElement;->precomp(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v3

    .line 942
    .local v3, "tminus":Lnet/i2p/crypto/eddsa/math/GroupElement;
    invoke-virtual {v2, v3, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->cmov(Lnet/i2p/crypto/eddsa/math/GroupElement;I)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v4

    return-object v4
.end method

.method public sub(Lnet/i2p/crypto/eddsa/math/GroupElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 12
    .param p1, "q"    # Lnet/i2p/crypto/eddsa/math/GroupElement;

    .line 781
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_1

    .line 783
    iget-object v0, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    sget-object v1, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    if-ne v0, v1, :cond_0

    .line 787
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 788
    .local v0, "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 789
    .local v1, "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v2, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 790
    .local v2, "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v3, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v3

    .line 791
    .local v3, "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v4, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v4, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v4

    .line 792
    .local v4, "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v5, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    iget-object v6, p1, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v5, v6}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v5

    .line 793
    .local v5, "ZZ":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v5, v5}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v6

    .line 794
    .local v6, "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v7, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->curve:Lnet/i2p/crypto/eddsa/math/Curve;

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v8

    invoke-virtual {v2, v3}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v9

    invoke-virtual {v6, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->subtract(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v10

    invoke-virtual {v6, v4}, Lnet/i2p/crypto/eddsa/math/FieldElement;->add(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v11

    invoke-static {v7, v8, v9, v10, v11}, Lnet/i2p/crypto/eddsa/math/GroupElement;->p1p1(Lnet/i2p/crypto/eddsa/math/Curve;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v7

    return-object v7

    .line 784
    .end local v0    # "YpX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v1    # "YmX":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v2    # "A":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v3    # "B":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v4    # "C":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v5    # "ZZ":Lnet/i2p/crypto/eddsa/math/FieldElement;
    .end local v6    # "D":Lnet/i2p/crypto/eddsa/math/FieldElement;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 782
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toByteArray()[B
    .locals 7

    .line 423
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$1;->$SwitchMap$net$i2p$crypto$eddsa$math$GroupElement$Representation:[I

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->repr:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 433
    invoke-virtual {p0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 426
    :pswitch_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->invert()Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v0

    .line 427
    .local v0, "recip":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v1, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v1

    .line 428
    .local v1, "x":Lnet/i2p/crypto/eddsa/math/FieldElement;
    iget-object v2, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v2, v0}, Lnet/i2p/crypto/eddsa/math/FieldElement;->multiply(Lnet/i2p/crypto/eddsa/math/FieldElement;)Lnet/i2p/crypto/eddsa/math/FieldElement;

    move-result-object v2

    .line 429
    .local v2, "y":Lnet/i2p/crypto/eddsa/math/FieldElement;
    invoke-virtual {v2}, Lnet/i2p/crypto/eddsa/math/FieldElement;->toByteArray()[B

    move-result-object v3

    .line 430
    .local v3, "s":[B
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v5, v3, v4

    invoke-virtual {v1}, Lnet/i2p/crypto/eddsa/math/FieldElement;->isNegative()Z

    move-result v6

    if-eqz v6, :cond_0

    const/16 v6, -0x80

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    .line 431
    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public toCached()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 470
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->CACHED:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public toP2()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 443
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P2:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public toP3()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 452
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public toP3PrecomputeDouble()Lnet/i2p/crypto/eddsa/math/GroupElement;
    .locals 1

    .line 461
    sget-object v0, Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;->P3PrecomputedDouble:Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;

    invoke-direct {p0, v0}, Lnet/i2p/crypto/eddsa/math/GroupElement;->toRep(Lnet/i2p/crypto/eddsa/math/GroupElement$Representation;)Lnet/i2p/crypto/eddsa/math/GroupElement;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GroupElement\nX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->X:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Y:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nZ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->Z:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/i2p/crypto/eddsa/math/GroupElement;->T:Lnet/i2p/crypto/eddsa/math/FieldElement;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
