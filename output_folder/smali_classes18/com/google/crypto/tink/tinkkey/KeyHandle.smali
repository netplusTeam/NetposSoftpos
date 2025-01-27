.class public Lcom/google/crypto/tink/tinkkey/KeyHandle;
.super Ljava/lang/Object;
.source "KeyHandle.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final id:I

.field private final key:Lcom/google/crypto/tink/tinkkey/TinkKey;

.field private final status:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/tinkkey/TinkKey;)V
    .locals 1
    .param p1, "key"    # Lcom/google/crypto/tink/tinkkey/TinkKey;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->key:Lcom/google/crypto/tink/tinkkey/TinkKey;

    .line 85
    sget-object v0, Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;->ENABLED:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    iput-object v0, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->status:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    .line 86
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->randKeyId()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->id:I

    .line 87
    return-void
.end method

.method protected constructor <init>(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;I)V
    .locals 0
    .param p1, "key"    # Lcom/google/crypto/tink/tinkkey/TinkKey;
    .param p2, "status"    # Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;
    .param p3, "keyId"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "status",
            "keyId"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->key:Lcom/google/crypto/tink/tinkkey/TinkKey;

    .line 95
    iput-object p2, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->status:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    .line 96
    iput p3, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->id:I

    .line 97
    return-void
.end method

.method private checkAccess(Lcom/google/crypto/tink/tinkkey/KeyAccess;)V
    .locals 2
    .param p1, "access"    # Lcom/google/crypto/tink/tinkkey/KeyAccess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/google/crypto/tink/tinkkey/KeyHandle;->hasSecret()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/crypto/tink/tinkkey/KeyAccess;->canAccessSecret()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "No access"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_1
    :goto_0
    return-void
.end method

.method public static createFromKey(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/tinkkey/KeyHandle;
    .locals 2
    .param p0, "keyData"    # Lcom/google/crypto/tink/proto/KeyData;
    .param p1, "opt"    # Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyData",
            "opt"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 72
    new-instance v0, Lcom/google/crypto/tink/tinkkey/KeyHandle;

    new-instance v1, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;

    invoke-direct {v1, p0, p1}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;-><init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/tinkkey/KeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;)V

    return-object v0
.end method

.method public static createFromKey(Lcom/google/crypto/tink/tinkkey/TinkKey;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/tinkkey/KeyHandle;
    .locals 1
    .param p0, "key"    # Lcom/google/crypto/tink/tinkkey/TinkKey;
    .param p1, "access"    # Lcom/google/crypto/tink/tinkkey/KeyAccess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 58
    new-instance v0, Lcom/google/crypto/tink/tinkkey/KeyHandle;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/tinkkey/KeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;)V

    .line 59
    .local v0, "result":Lcom/google/crypto/tink/tinkkey/KeyHandle;
    invoke-direct {v0, p1}, Lcom/google/crypto/tink/tinkkey/KeyHandle;->checkAccess(Lcom/google/crypto/tink/tinkkey/KeyAccess;)V

    .line 60
    return-object v0
.end method

.method public static generateNew(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/tinkkey/KeyHandle;
    .locals 3
    .param p0, "keyTemplate"    # Lcom/google/crypto/tink/KeyTemplate;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;

    .line 108
    invoke-static {p0}, Lcom/google/crypto/tink/Registry;->newKeyData(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;-><init>(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)V

    .line 109
    .local v0, "protoKey":Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;
    new-instance v1, Lcom/google/crypto/tink/tinkkey/KeyHandle;

    invoke-direct {v1, v0}, Lcom/google/crypto/tink/tinkkey/KeyHandle;-><init>(Lcom/google/crypto/tink/tinkkey/TinkKey;)V

    return-object v1
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->id:I

    return v0
.end method

.method public getKey(Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/tinkkey/TinkKey;
    .locals 1
    .param p1, "access"    # Lcom/google/crypto/tink/tinkkey/KeyAccess;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 135
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/tinkkey/KeyHandle;->checkAccess(Lcom/google/crypto/tink/tinkkey/KeyAccess;)V

    .line 136
    iget-object v0, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->key:Lcom/google/crypto/tink/tinkkey/TinkKey;

    return-object v0
.end method

.method public getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->key:Lcom/google/crypto/tink/tinkkey/TinkKey;

    invoke-interface {v0}, Lcom/google/crypto/tink/tinkkey/TinkKey;->getKeyTemplate()Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->status:Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    return-object v0
.end method

.method public hasSecret()Z
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/crypto/tink/tinkkey/KeyHandle;->key:Lcom/google/crypto/tink/tinkkey/TinkKey;

    invoke-interface {v0}, Lcom/google/crypto/tink/tinkkey/TinkKey;->hasSecret()Z

    move-result v0

    return v0
.end method
