.class Lorg/bouncycastle/math/ec/ECCurve$1;
.super Ljava/lang/Object;
.source "ECCurve.java"

# interfaces
.implements Lorg/bouncycastle/math/ec/ECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$FE_BYTES:I

.field final synthetic val$len:I

.field final synthetic val$table:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;II[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 11

    .line 1
    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v0, [B

    new-array v0, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 4
    :goto_0
    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    const/4 v6, 0x1

    if-ge v3, v5, :cond_1

    xor-int v5, v3, p1

    sub-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x1f

    move v6, v2

    .line 8
    :goto_1
    iget v7, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v6, v7, :cond_0

    .line 10
    aget-byte v8, v1, v6

    iget-object v9, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v10, v4, v6

    aget-byte v10, v9, v10

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    .line 11
    aget-byte v8, v0, v6

    add-int/2addr v7, v4

    add-int/2addr v7, v6

    aget-byte v7, v9, v7

    and-int/2addr v7, v5

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 17
    :cond_1
    iget-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v6, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {p1, v3}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p1, v1, v0, v2}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;Z)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    return-object p1
.end method
