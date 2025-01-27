.class public abstract Lnet/i2p/crypto/eddsa/math/Encoding;
.super Ljava/lang/Object;
.source "Encoding.java"


# instance fields
.field protected f:Lnet/i2p/crypto/eddsa/math/Field;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract decode([B)Lnet/i2p/crypto/eddsa/math/FieldElement;
.end method

.method public abstract encode(Lnet/i2p/crypto/eddsa/math/FieldElement;)[B
.end method

.method public abstract isNegative(Lnet/i2p/crypto/eddsa/math/FieldElement;)Z
.end method

.method public declared-synchronized setField(Lnet/i2p/crypto/eddsa/math/Field;)V
    .locals 2
    .param p1, "f"    # Lnet/i2p/crypto/eddsa/math/Field;

    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v0, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;

    if-nez v0, :cond_0

    .line 26
    iput-object p1, p0, Lnet/i2p/crypto/eddsa/math/Encoding;->f:Lnet/i2p/crypto/eddsa/math/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 25
    .end local p0    # "this":Lnet/i2p/crypto/eddsa/math/Encoding;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .end local p1    # "f":Lnet/i2p/crypto/eddsa/math/Field;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
