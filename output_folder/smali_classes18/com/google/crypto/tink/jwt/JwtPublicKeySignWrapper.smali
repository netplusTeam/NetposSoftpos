.class Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;
.super Ljava/lang/Object;
.source "JwtPublicKeySignWrapper.java"

# interfaces
.implements Lcom/google/crypto/tink/PrimitiveWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/PrimitiveWrapper<",
        "Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;",
        "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
        ">;"
    }
.end annotation


# static fields
.field private static final WRAPPER:Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->WRAPPER:Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->WRAPPER:Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;

    invoke-static {v0}, Lcom/google/crypto/tink/Registry;->registerPrimitiveWrapper(Lcom/google/crypto/tink/PrimitiveWrapper;)V

    .line 100
    return-void
.end method

.method private static validate(Lcom/google/crypto/tink/PrimitiveSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 42
    .local p0, "primitiveSet":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;>;"
    invoke-virtual {p0}, Lcom/google/crypto/tink/PrimitiveSet;->getPrimary()Lcom/google/crypto/tink/PrimitiveSet$Entry;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 45
    invoke-virtual {p0}, Lcom/google/crypto/tink/PrimitiveSet;->getAll()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 46
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;>;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/PrimitiveSet$Entry;

    .line 47
    .local v3, "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;>;"
    invoke-virtual {v3}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v4

    sget-object v5, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-eq v4, v5, :cond_1

    .line 48
    invoke-virtual {v3}, Lcom/google/crypto/tink/PrimitiveSet$Entry;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v4

    sget-object v5, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne v4, v5, :cond_0

    goto :goto_2

    .line 49
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string/jumbo v2, "unsupported OutputPrefixType"

    invoke-direct {v0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    .end local v3    # "entry":Lcom/google/crypto/tink/PrimitiveSet$Entry;, "Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;>;"
    :cond_1
    :goto_2
    goto :goto_1

    .line 52
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/PrimitiveSet$Entry<Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;>;>;"
    :cond_2
    goto :goto_0

    .line 53
    :cond_3
    return-void

    .line 43
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Primitive set has no primary."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getInputPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;",
            ">;"
        }
    .end annotation

    .line 89
    const-class v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;

    return-object v0
.end method

.method public getPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
            ">;"
        }
    .end annotation

    .line 84
    const-class v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    return-object v0
.end method

.method public wrap(Lcom/google/crypto/tink/PrimitiveSet;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/PrimitiveSet<",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;",
            ">;)",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    .local p1, "primitives":Lcom/google/crypto/tink/PrimitiveSet;, "Lcom/google/crypto/tink/PrimitiveSet<Lcom/google/crypto/tink/jwt/JwtPublicKeySignInternal;>;"
    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->validate(Lcom/google/crypto/tink/PrimitiveSet;)V

    .line 79
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper$WrappedJwtPublicKeySign;-><init>(Lcom/google/crypto/tink/PrimitiveSet;)V

    return-object v0
.end method

.method public bridge synthetic wrap(Lcom/google/crypto/tink/PrimitiveSet;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "primitives"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtPublicKeySignWrapper;->wrap(Lcom/google/crypto/tink/PrimitiveSet;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    move-result-object p1

    return-object p1
.end method
