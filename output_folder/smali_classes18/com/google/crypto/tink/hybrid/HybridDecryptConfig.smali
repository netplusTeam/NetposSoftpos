.class public final Lcom/google/crypto/tink/hybrid/HybridDecryptConfig;
.super Ljava/lang/Object;
.source "HybridDecryptConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerStandardKeyTypes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    sget-object v0, Lcom/google/crypto/tink/hybrid/HybridConfig;->TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    invoke-static {v0}, Lcom/google/crypto/tink/Config;->register(Lcom/google/crypto/tink/proto/RegistryConfig;)V

    .line 50
    return-void
.end method
