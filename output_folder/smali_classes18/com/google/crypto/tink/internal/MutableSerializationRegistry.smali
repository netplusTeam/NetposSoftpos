.class public final Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
.super Ljava/lang/Object;
.source "MutableSerializationRegistry.java"


# static fields
.field private static final GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableSerializationRegistry;


# instance fields
.field private final registry:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/crypto/tink/internal/SerializationRegistry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    invoke-direct {v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    invoke-direct {v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>()V

    .line 45
    invoke-virtual {v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    return-void
.end method

.method public static globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .locals 1

    .line 41
    sget-object v0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->GLOBAL_INSTANCE:Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    return-object v0
.end method


# virtual methods
.method public hasParserForKey(Lcom/google/crypto/tink/internal/Serialization;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;)Z"
        }
    .end annotation

    .line 117
    .local p1, "serializedKey":Lcom/google/crypto/tink/internal/Serialization;, "TSerializationT;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasParserForKey(Lcom/google/crypto/tink/internal/Serialization;)Z

    move-result v0

    return v0
.end method

.method public hasParserForParameters(Lcom/google/crypto/tink/internal/Serialization;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;)Z"
        }
    .end annotation

    .line 183
    .local p1, "serializedParameters":Lcom/google/crypto/tink/internal/Serialization;, "TSerializationT;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasParserForParameters(Lcom/google/crypto/tink/internal/Serialization;)Z

    move-result v0

    return v0
.end method

.method public hasSerializerForKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TKeyT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)Z"
        }
    .end annotation

    .line 165
    .local p1, "key":Lcom/google/crypto/tink/Key;, "TKeyT;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasSerializerForKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSerializerForParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TParametersT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)Z"
        }
    .end annotation

    .line 218
    .local p1, "parameters":Lcom/google/crypto/tink/Parameters;, "TParametersT;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->hasSerializerForParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 1
    .param p2, "access"    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serializedKey",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")",
            "Lcom/google/crypto/tink/Key;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 130
    .local p1, "serializedKey":Lcom/google/crypto/tink/internal/Serialization;, "TSerializationT;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object v0

    return-object v0
.end method

.method public parseKeyWithLegacyFallback(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 3
    .param p1, "protoKeySerialization"    # Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .param p2, "access"    # Lcom/google/crypto/tink/SecretKeyAccess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "protoKeySerialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 147
    if-eqz p2, :cond_1

    .line 150
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->hasParserForKey(Lcom/google/crypto/tink/internal/Serialization;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    invoke-direct {v0, p1, p2}, Lcom/google/crypto/tink/internal/LegacyProtoKey;-><init>(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e2":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/google/crypto/tink/internal/TinkBugException;

    const-string v2, "Creating a LegacyProtoKey failed"

    invoke-direct {v1, v2, v0}, Lcom/google/crypto/tink/internal/TinkBugException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 158
    .end local v0    # "e2":Ljava/security/GeneralSecurityException;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object v0

    return-object v0

    .line 148
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "access cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TSerializationT;)",
            "Lcom/google/crypto/tink/Parameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 195
    .local p1, "serializedParameters":Lcom/google/crypto/tink/internal/Serialization;, "TSerializationT;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    return-object v0
.end method

.method public parseParametersWithLegacyFallback(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/Parameters;
    .locals 2
    .param p1, "protoParametersSerialization"    # Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protoParametersSerialization"
        }
    .end annotation

    .line 208
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    invoke-direct {v1, p1}, Lcom/google/crypto/tink/internal/LegacyProtoParameters;-><init>(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)V

    return-object v1
.end method

.method public declared-synchronized registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .local p1, "parser":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<TSerializationT;>;"
    monitor-enter p0

    .line 75
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 76
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object v0

    .line 77
    .local v0, "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 74
    .end local v0    # "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    .end local p0    # "this":Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .end local p1    # "parser":Lcom/google/crypto/tink/internal/KeyParser;, "Lcom/google/crypto/tink/internal/KeyParser<TSerializationT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "TKeyT;TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .local p1, "serializer":Lcom/google/crypto/tink/internal/KeySerializer;, "Lcom/google/crypto/tink/internal/KeySerializer<TKeyT;TSerializationT;>;"
    monitor-enter p0

    .line 60
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 61
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object v0

    .line 62
    .local v0, "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    .line 59
    .end local v0    # "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    .end local p0    # "this":Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .end local p1    # "serializer":Lcom/google/crypto/tink/internal/KeySerializer;, "Lcom/google/crypto/tink/internal/KeySerializer<TKeyT;TSerializationT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .local p1, "parser":Lcom/google/crypto/tink/internal/ParametersParser;, "Lcom/google/crypto/tink/internal/ParametersParser<TSerializationT;>;"
    monitor-enter p0

    .line 109
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 110
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object v0

    .line 111
    .local v0, "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 108
    .end local v0    # "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    .end local p0    # "this":Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .end local p1    # "parser":Lcom/google/crypto/tink/internal/ParametersParser;, "Lcom/google/crypto/tink/internal/ParametersParser<TSerializationT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(",
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "TParametersT;TSerializationT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .local p1, "serializer":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<TParametersT;TSerializationT;>;"
    monitor-enter p0

    .line 92
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    .line 93
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;-><init>(Lcom/google/crypto/tink/internal/SerializationRegistry;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->build()Lcom/google/crypto/tink/internal/SerializationRegistry;

    move-result-object v0

    .line 96
    .local v0, "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    iget-object v1, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-void

    .line 91
    .end local v0    # "newRegistry":Lcom/google/crypto/tink/internal/SerializationRegistry;
    .end local p0    # "this":Lcom/google/crypto/tink/internal/MutableSerializationRegistry;
    .end local p1    # "serializer":Lcom/google/crypto/tink/internal/ParametersSerializer;, "Lcom/google/crypto/tink/internal/ParametersSerializer<TParametersT;TSerializationT;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;
    .locals 1
    .param p3, "access"    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "serializationClass",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<KeyT:",
            "Lcom/google/crypto/tink/Key;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TKeyT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;",
            "Lcom/google/crypto/tink/SecretKeyAccess;",
            ")TSerializationT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 177
    .local p1, "key":Lcom/google/crypto/tink/Key;, "TKeyT;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/crypto/tink/internal/SerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object v0

    return-object v0
.end method

.method public serializeParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/Serialization;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "serializationClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParametersT:",
            "Lcom/google/crypto/tink/Parameters;",
            "SerializationT::",
            "Lcom/google/crypto/tink/internal/Serialization;",
            ">(TParametersT;",
            "Ljava/lang/Class<",
            "TSerializationT;>;)TSerializationT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 231
    .local p1, "parameters":Lcom/google/crypto/tink/Parameters;, "TParametersT;"
    .local p2, "serializationClass":Ljava/lang/Class;, "Ljava/lang/Class<TSerializationT;>;"
    iget-object v0, p0, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registry:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/SerializationRegistry;

    invoke-virtual {v0, p1, p2}, Lcom/google/crypto/tink/internal/SerializationRegistry;->serializeParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object v0

    return-object v0
.end method
