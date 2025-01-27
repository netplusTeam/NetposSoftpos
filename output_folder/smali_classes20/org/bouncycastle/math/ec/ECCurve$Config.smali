.class public Lorg/bouncycastle/math/ec/ECCurve$Config;
.super Ljava/lang/Object;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Config"
.end annotation


# instance fields
.field protected coord:I

.field protected endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

.field protected multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECCurve;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;ILorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECMultiplier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->coord:I

    .line 3
    iput-object p3, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 4
    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    return-void
.end method


# virtual methods
.method public create()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->coord:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->supportsCoordinateSystem(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->cloneCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    if-eq v0, v1, :cond_0

    .line 13
    monitor-enter v0

    .line 15
    :try_start_0
    iget v1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->coord:I

    iput v1, v0, Lorg/bouncycastle/math/ec/ECCurve;->coord:I

    .line 16
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    iput-object v1, v0, Lorg/bouncycastle/math/ec/ECCurve;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    .line 17
    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    iput-object v1, v0, Lorg/bouncycastle/math/ec/ECCurve;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    .line 18
    monitor-exit v0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "implementation returned current curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unsupported coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCoordinateSystem(I)Lorg/bouncycastle/math/ec/ECCurve$Config;
    .locals 0

    .line 1
    iput p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->coord:I

    return-object p0
.end method

.method public setEndomorphism(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;)Lorg/bouncycastle/math/ec/ECCurve$Config;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->endomorphism:Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    return-object p0
.end method

.method public setMultiplier(Lorg/bouncycastle/math/ec/ECMultiplier;)Lorg/bouncycastle/math/ec/ECCurve$Config;
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$Config;->multiplier:Lorg/bouncycastle/math/ec/ECMultiplier;

    return-object p0
.end method
