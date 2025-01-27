.class public final Lcom/google/crypto/tink/KeysetHandle$Builder;
.super Ljava/lang/Object;
.source "KeysetHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/KeysetHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;,
        Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/KeysetHandle$Builder;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/crypto/tink/KeysetHandle$Builder;

    .line 92
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->clearPrimary()V

    return-void
.end method

.method private static checkIdAssignments(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 273
    .local p0, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_2

    .line 274
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    .line 275
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 276
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 273
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private clearPrimary()V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 213
    .local v1, "entry":Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$302(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Z)Z

    .line 214
    .end local v1    # "entry":Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method private static createKeyFromParameters(Lcom/google/crypto/tink/Parameters;ILcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key;
    .locals 4
    .param p0, "parameters"    # Lcom/google/crypto/tink/Parameters;
    .param p1, "id"    # I
    .param p2, "keyStatusType"    # Lcom/google/crypto/tink/proto/KeyStatusType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "id",
            "keyStatusType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 295
    instance-of v0, p0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    if-eqz v0, :cond_0

    .line 296
    move-object v0, p0

    check-cast v0, Lcom/google/crypto/tink/internal/LegacyProtoParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/LegacyProtoParameters;->getSerialization()Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object v0

    .local v0, "serializedParameters":Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    goto :goto_0

    .line 299
    .end local v0    # "serializedParameters":Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    :cond_0
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 300
    invoke-virtual {v0, p0, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeParameters(Lcom/google/crypto/tink/Parameters;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 302
    .restart local v0    # "serializedParameters":Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    :goto_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/Registry;->newKeyData(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    .line 303
    .local v1, "keyData":Lcom/google/crypto/tink/proto/KeyData;
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 304
    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 305
    invoke-virtual {v2, p2}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 306
    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 307
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 308
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 303
    return-object v2
.end method

.method private static createKeysetKeyFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;I)Lcom/google/crypto/tink/proto/Keyset$Key;
    .locals 4
    .param p0, "builderEntry"    # Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builderEntry",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 328
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v0

    if-nez v0, :cond_0

    .line 329
    nop

    .line 330
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$900(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->access$1000(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v1

    .line 329
    invoke-static {v0, p1, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->createKeyFromParameters(Lcom/google/crypto/tink/Parameters;ILcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v0

    return-object v0

    .line 333
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v0

    instance-of v0, v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    if-eqz v0, :cond_1

    .line 334
    nop

    .line 335
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/LegacyProtoKey;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/LegacyProtoKey;->getSerialization(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object v0

    .local v0, "serializedKey":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    goto :goto_0

    .line 338
    .end local v0    # "serializedKey":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    :cond_1
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    .line 340
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$800(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/Key;

    move-result-object v1

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v3

    .line 339
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 342
    .restart local v0    # "serializedKey":Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    :goto_0
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object v1

    .line 343
    .local v1, "idRequirement":Ljava/lang/Integer;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_2

    goto :goto_1

    .line 344
    :cond_2
    new-instance v2, Ljava/security/GeneralSecurityException;

    const-string v3, "Wrong ID set for key with ID requirement"

    invoke-direct {v2, v3}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 346
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle;->access$1000(Lcom/google/crypto/tink/KeyStatus;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/google/crypto/tink/KeysetHandle;->access$1100(ILcom/google/crypto/tink/proto/KeyStatusType;Lcom/google/crypto/tink/internal/ProtoKeySerialization;)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v2

    return-object v2
.end method

.method private static getNextIdFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Ljava/util/Set;)I
    .locals 3
    .param p0, "builderEntry"    # Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builderEntry",
            "idsSoFar"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 314
    .local p1, "idsSoFar":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 315
    .local v0, "id":I
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 318
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$600()Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 319
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->randomIdNotInSet(Ljava/util/Set;)I

    move-result v0

    goto :goto_0

    .line 321
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$500(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;->access$700(Lcom/google/crypto/tink/KeysetHandle$Builder$KeyIdStrategy;)I

    move-result v0

    .line 323
    :goto_0
    return v0

    .line 316
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static randomIdNotInSet(Ljava/util/Set;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ids"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 284
    .local p0, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 285
    .local v0, "id":I
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 288
    :cond_0
    return v0

    .line 286
    :cond_1
    :goto_1
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->randKeyId()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 2
    .param p1, "entry"    # Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entry"
        }
    .end annotation

    .line 220
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$400(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 223
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->clearPrimary()V

    .line 226
    :cond_0
    invoke-static {p1, p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$402(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Lcom/google/crypto/tink/KeysetHandle$Builder;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    .line 227
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-object p0

    .line 221
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/google/crypto/tink/KeysetHandle;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 366
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v0

    .line 367
    .local v0, "keysetBuilder":Lcom/google/crypto/tink/proto/Keyset$Builder;
    const/4 v1, 0x0

    .line 369
    .local v1, "primaryId":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-static {v2}, Lcom/google/crypto/tink/KeysetHandle$Builder;->checkIdAssignments(Ljava/util/List;)V

    .line 370
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 371
    .local v2, "idsSoFar":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v3, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 372
    .local v4, "builderEntry":Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    invoke-static {v4}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$1200(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeyStatus;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 375
    invoke-static {v4, v2}, Lcom/google/crypto/tink/KeysetHandle$Builder;->getNextIdFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;Ljava/util/Set;)I

    move-result v5

    .line 376
    .local v5, "id":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 379
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-static {v4, v5}, Lcom/google/crypto/tink/KeysetHandle$Builder;->createKeysetKeyFromBuilderEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v6

    .line 382
    .local v6, "keysetKey":Lcom/google/crypto/tink/proto/Keyset$Key;
    invoke-virtual {v0, v6}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 383
    invoke-static {v4}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->access$300(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 384
    if-nez v1, :cond_0

    .line 387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    .line 385
    :cond_0
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v7, "Two primaries were set"

    invoke-direct {v3, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 389
    .end local v4    # "builderEntry":Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .end local v5    # "id":I
    .end local v6    # "keysetKey":Lcom/google/crypto/tink/proto/Keyset$Key;
    :cond_1
    :goto_1
    goto :goto_0

    .line 377
    .restart local v4    # "builderEntry":Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .restart local v5    # "id":I
    :cond_2
    new-instance v3, Ljava/security/GeneralSecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is used twice in the keyset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 373
    .end local v5    # "id":I
    :cond_3
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v5, "Key Status not set."

    invoke-direct {v3, v5}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 390
    .end local v4    # "builderEntry":Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    :cond_4
    if-eqz v1, :cond_5

    .line 393
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 394
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v3

    check-cast v3, Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v3}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v3

    return-object v3

    .line 391
    :cond_5
    new-instance v3, Ljava/security/GeneralSecurityException;

    const-string v4, "No primary was set"

    invoke-direct {v3, v4}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public deleteAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 264
    return-object p0
.end method

.method public getAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    return-object v0
.end method

.method public removeAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetHandle$Builder;->entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
