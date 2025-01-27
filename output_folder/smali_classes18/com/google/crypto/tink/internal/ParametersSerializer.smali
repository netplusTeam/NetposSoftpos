.class public abstract Lcom/google/crypto/tink/internal/ParametersSerializer;
.super Ljava/lang/Object;
.source "ParametersSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParametersT:",
        "Lcom/google/crypto/tink/Parameters;",
        "SerializationT::",
        "Lcom/google/crypto/tink/internal/Serialization;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final parametersClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TParametersT;>;"
        }
    .end annotation
.end field

.field private final serializationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TSerializationT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parametersClass",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TParametersT;>;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<TParametersT;TSerializationT;>;"
    .local p1, "parametersClass":Ljava/lang/Class;, "Ljava/lang/Class<TParametersT;>;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/crypto/tink/internal/ParametersSerializer;->parametersClass:Ljava/lang/Class;

    .line 47
    iput-object p2, p0, Lcom/google/crypto/tink/internal/ParametersSerializer;->serializationClass:Ljava/lang/Class;

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/ParametersSerializer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Class;
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # Lcom/google/crypto/tink/internal/ParametersSerializer$1;

    .line 28
    .local p0, "this":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<TParametersT;TSerializationT;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/internal/ParametersSerializer;-><init>(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "function",
            "parametersClass",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction<",
            "TParametersT;TSerializationT;>;",
            "Ljava/lang/Class<",
            "TParametersT;>;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)",
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "TParametersT;TSerializationT;>;"
        }
    .end annotation

    .line 88
    .local p0, "function":Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;, "Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction<TParametersT;TSerializationT;>;"
    .local p1, "parametersClass":Ljava/lang/Class;, "Ljava/lang/Class<TParametersT;>;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    new-instance v0, Lcom/google/crypto/tink/internal/ParametersSerializer$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/crypto/tink/internal/ParametersSerializer$1;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;)V

    return-object v0
.end method


# virtual methods
.method public getParametersClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TParametersT;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<TParametersT;TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/ParametersSerializer;->parametersClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getSerializationClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TSerializationT;>;"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<TParametersT;TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/ParametersSerializer;->serializationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract serializeParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/internal/Serialization;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TParametersT;)TSerializationT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation
.end method
