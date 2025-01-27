.class public Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;
.super Ljava/lang/Object;
.source "Ssh2PublicKeyEntryDecoder.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder;
.implements Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;
.implements Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader;
.implements Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataDecoder<",
        "Ljava/security/PublicKey;",
        ">;",
        "Lorg/apache/sshd/common/config/keys/PublicKeyEntryResolver;",
        "Lorg/apache/sshd/common/config/keys/PublicKeyRawDataReader<",
        "Ljava/security/PublicKey;",
        ">;",
        "Lorg/apache/sshd/common/config/keys/KeyTypeNamesSupport;"
    }
.end annotation


# static fields
.field public static final BEGIN_MARKER:Ljava/lang/String; = "BEGIN SSH2 PUBLIC KEY"

.field public static final END_MARKER:Ljava/lang/String; = "END SSH2 PUBLIC KEY"

.field public static final HEADER_CONTINUATION_INDICATOR:C = '\\'

.field public static final INSTANCE:Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;

.field public static final START_MARKERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STOP_MARKERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUPPORTED_KEY_TYPES:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ssh-rsa"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ssh-dss"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ssh-ed25519"

    aput-object v3, v1, v2

    sget-object v2, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP256:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP384:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lorg/apache/sshd/common/keyprovider/KeyPairProvider;->ECDSA_SHA2_NISTP521:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 62
    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->SUPPORTED_KEY_TYPES:Ljava/util/NavigableSet;

    .line 67
    const-string v0, "BEGIN SSH2 PUBLIC KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->START_MARKERS:Ljava/util/List;

    .line 70
    const-string v0, "END SSH2 PUBLIC KEY"

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->STOP_MARKERS:Ljava/util/List;

    .line 84
    new-instance v0, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->INSTANCE:Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    return-void
.end method


# virtual methods
.method public decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 112
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->decodePublicKeyByType(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public decodePublicKeyByType(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 119
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p2}, Lorg/apache/sshd/common/config/keys/KeyUtils;->getPublicKeyEntryDecoder(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;

    move-result-object v0

    .line 120
    .local v0, "decoder":Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;, "Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder<**>;"
    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/PublicKeyEntryDecoder;->decodePublicKeyByType(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;Ljava/io/InputStream;Ljava/util/Map;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 121
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No decoder for key type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getSupportedKeyTypes()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->SUPPORTED_KEY_TYPES:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/security/PublicKey;
    .locals 9
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 161
    .local p5, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p5}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->extractDataBytes(Ljava/util/Collection;)[B

    move-result-object v7

    .line 163
    .local v7, "dataBytes":[B
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v7

    move-object v6, p6

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 163
    return-object v0

    .line 165
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 166
    throw v0
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "beginMarker"    # Ljava/lang/String;
    .param p4, "endMarker"    # Ljava/lang/String;
    .param p5, "dataBytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 174
    .local p6, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 175
    const/16 v0, 0x100

    invoke-static {p5, v0}, Lorg/apache/sshd/common/config/keys/KeyEntryResolver;->decodeString([BI)Ljava/util/Map$Entry;

    move-result-object v0

    .line 176
    .local v0, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 177
    .local v1, "keyType":Ljava/lang/String;
    invoke-virtual {p0, p1, v1, p5, p6}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2
.end method

.method public readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Ljava/security/PublicKey;
    .locals 19
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 130
    .local p3, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p3

    sget-object v1, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->START_MARKERS:Ljava/util/List;

    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->findMarkerLine(Ljava/util/List;Ljava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 131
    .local v1, "markerPos":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-nez v1, :cond_0

    .line 132
    const/4 v2, 0x0

    return-object v2

    .line 135
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 136
    .local v2, "startIndex":I
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    .local v3, "startLine":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 139
    sget-object v4, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->STOP_MARKERS:Ljava/util/List;

    invoke-static {v0, v2, v4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->findMarkerLine(Ljava/util/List;ILjava/util/List;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v1

    .line 140
    if-eqz v1, :cond_3

    .line 144
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 145
    .local v10, "endIndex":I
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Ljava/lang/String;

    .line 146
    .local v11, "endLine":Ljava/lang/String;
    nop

    .line 148
    invoke-interface {v0, v2, v10}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    .line 147
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v3

    move-object v8, v11

    invoke-virtual/range {v4 .. v9}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->separateDataLinesFromHeaders(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map$Entry;

    move-result-object v4

    .line 149
    .local v4, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;+Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 150
    .local v5, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 151
    .local v6, "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v6, :cond_1

    .line 152
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object/from16 v17, v7

    goto :goto_0

    :cond_1
    move-object/from16 v17, v6

    :goto_0
    if-nez v5, :cond_2

    .line 153
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v7

    move-object/from16 v18, v7

    goto :goto_1

    :cond_2
    move-object/from16 v18, v5

    .line 151
    :goto_1
    const-string v15, "BEGIN SSH2 PUBLIC KEY"

    const-string v16, "END SSH2 PUBLIC KEY"

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    invoke-virtual/range {v12 .. v18}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->readPublicKey(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Ljava/security/PublicKey;

    move-result-object v7

    return-object v7

    .line 141
    .end local v4    # "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;+Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "dataLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "endIndex":I
    .end local v11    # "endLine":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing end marker (END SSH2 PUBLIC KEY) after line #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public resolve(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "keyType"    # Ljava/lang/String;
    .param p3, "keyData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/security/PublicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 99
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "No key type provided"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    invoke-virtual {p0}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->getSupportedKeyTypes()Ljava/util/NavigableSet;

    move-result-object v0

    .line 101
    .local v0, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/ssh2/Ssh2PublicKeyEntryDecoder;->decodePublicKey(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/String;[BLjava/util/Map;)Ljava/security/PublicKey;

    move-result-object v1

    return-object v1

    .line 105
    :cond_0
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolve("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") not in listed supported types: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected separateDataLinesFromHeaders(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map$Entry;
    .locals 13
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "startLine"    # Ljava/lang/String;
    .param p4, "endLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map$Entry<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 184
    .local p5, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p5

    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 185
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v2

    .line 186
    .local v2, "len":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 187
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 188
    .local v4, "l":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 189
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 190
    goto/16 :goto_2

    .line 193
    :cond_0
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 195
    .local v5, "pos":I
    if-gez v5, :cond_1

    .line 196
    new-instance v6, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-interface {v0, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v1, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 199
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 200
    .local v7, "name":Ljava/lang/String;
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 201
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    .line 202
    .local v9, "vLen":I
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x5c

    if-ne v10, v11, :cond_3

    .line 203
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v8, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 204
    :goto_1
    add-int/lit8 v3, v3, 0x1

    if-ge v3, v2, :cond_3

    .line 205
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v4, v10

    check-cast v4, Ljava/lang/String;

    .line 206
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 208
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_2

    .line 209
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v4, v6, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 210
    goto :goto_1

    .line 213
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 218
    :cond_3
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .end local v4    # "l":Ljava/lang/String;
    .end local v5    # "pos":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "vLen":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 221
    .end local v3    # "index":I
    :cond_4
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No viable data lines found in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 222
    invoke-interface {p2}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
