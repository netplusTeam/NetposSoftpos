.class public abstract Lorg/jpos/security/SecureKey;
.super Ljava/lang/Object;
.source "SecureKey.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/jpos/util/Loggeable;


# instance fields
.field protected keyBytes:[B

.field protected keyCheckValue:[B

.field protected keyLength:S

.field protected keyName:Ljava/lang/String;

.field protected keyType:Ljava/lang/String;

.field protected scheme:Lorg/jpos/security/KeyScheme;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/security/SecureKey;->keyBytes:[B

    return-void
.end method


# virtual methods
.method public getKeyBytes()[B
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/jpos/security/SecureKey;->keyBytes:[B

    return-object v0
.end method

.method public getKeyCheckValue()[B
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/jpos/security/SecureKey;->keyCheckValue:[B

    return-object v0
.end method

.method public getKeyLength()S
    .locals 1

    .line 143
    iget-short v0, p0, Lorg/jpos/security/SecureKey;->keyLength:S

    return v0
.end method

.method public getKeyName()Ljava/lang/String;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/jpos/security/SecureKey;->keyName:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyType()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/jpos/security/SecureKey;->keyType:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getScheme()Lorg/jpos/security/KeyScheme;
.end method

.method public setKeyBytes([B)V
    .locals 0
    .param p1, "keyBytes"    # [B

    .line 98
    iput-object p1, p0, Lorg/jpos/security/SecureKey;->keyBytes:[B

    .line 99
    return-void
.end method

.method public setKeyCheckValue([B)V
    .locals 0
    .param p1, "keyCheckValue"    # [B

    .line 117
    iput-object p1, p0, Lorg/jpos/security/SecureKey;->keyCheckValue:[B

    .line 118
    return-void
.end method

.method public setKeyLength(S)V
    .locals 0
    .param p1, "keyLength"    # S

    .line 136
    iput-short p1, p0, Lorg/jpos/security/SecureKey;->keyLength:S

    .line 137
    return-void
.end method

.method public setKeyName(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyName"    # Ljava/lang/String;

    .line 194
    iput-object p1, p0, Lorg/jpos/security/SecureKey;->keyName:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setKeyType(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyType"    # Ljava/lang/String;

    .line 153
    iput-object p1, p0, Lorg/jpos/security/SecureKey;->keyType:Ljava/lang/String;

    .line 154
    return-void
.end method

.method public setScheme(Lorg/jpos/security/KeyScheme;)V
    .locals 0
    .param p1, "scheme"    # Lorg/jpos/security/KeyScheme;

    .line 173
    iput-object p1, p0, Lorg/jpos/security/SecureKey;->scheme:Lorg/jpos/security/KeyScheme;

    .line 174
    return-void
.end method
