.class public final synthetic Lcom/google/crypto/tink/aead/XChaCha20Poly1305ProtoSerialization$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;
    .locals 0

    check-cast p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    invoke-static {p1, p2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305ProtoSerialization;->$r8$lambda$Ole-vkldWTQCYlwSiKy69s6Vo_s(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/Key;

    return-object p1
.end method
