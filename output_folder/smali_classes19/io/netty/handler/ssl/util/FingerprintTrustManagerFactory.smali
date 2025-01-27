.class public final Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;
.super Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;
.source "FingerprintTrustManagerFactory.java"


# static fields
.field private static final FINGERPRINT_PATTERN:Ljava/util/regex/Pattern;

.field private static final FINGERPRINT_STRIP_PATTERN:Ljava/util/regex/Pattern;

.field private static final SHA1_BYTE_LEN:I = 0x14

.field private static final SHA1_HEX_LEN:I = 0x28

.field private static final tlmd:Lio/netty/util/concurrent/FastThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/FastThreadLocal<",
            "Ljava/security/MessageDigest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final fingerprints:[[B

.field private final tm:Ljavax/net/ssl/TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    const-string v0, "^[0-9a-fA-F:]+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->FINGERPRINT_PATTERN:Ljava/util/regex/Pattern;

    .line 77
    const-string v0, ":"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->FINGERPRINT_STRIP_PATTERN:Ljava/util/regex/Pattern;

    .line 81
    new-instance v0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$1;

    invoke-direct {v0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$1;-><init>()V

    sput-object v0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->tlmd:Lio/netty/util/concurrent/FastThreadLocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 142
    .local p1, "fingerprints":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    invoke-static {p1}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->toFingerprintArray(Ljava/lang/Iterable;)[[B

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;-><init>([[B)V

    .line 143
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "fingerprints"    # [Ljava/lang/String;

    .line 151
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->toFingerprintArray(Ljava/lang/Iterable;)[[B

    move-result-object v0

    invoke-direct {p0, v0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;-><init>([[B)V

    .line 152
    return-void
.end method

.method public varargs constructor <init>([[B)V
    .locals 7
    .param p1, "fingerprints"    # [[B

    .line 159
    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;-><init>()V

    .line 93
    new-instance v0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;

    invoke-direct {v0, p0}, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory$2;-><init>(Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;)V

    iput-object v0, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->tm:Ljavax/net/ssl/TrustManager;

    .line 160
    const-string v0, "fingerprints"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 163
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 164
    .local v4, "f":[B
    if-nez v4, :cond_0

    .line 165
    goto :goto_1

    .line 167
    :cond_0
    array-length v5, v4

    const/16 v6, 0x14

    if-ne v5, v6, :cond_1

    .line 171
    invoke-virtual {v4}, [B->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v4    # "f":[B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .restart local v4    # "f":[B
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "malformed fingerprint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 169
    invoke-static {v4}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-static {v3}, Lio/netty/buffer/ByteBufUtil;->hexDump(Lio/netty/buffer/ByteBuf;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (expected: SHA1)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 174
    .end local v4    # "f":[B
    :cond_2
    :goto_1
    new-array v1, v2, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    iput-object v1, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->fingerprints:[[B

    .line 175
    return-void
.end method

.method static synthetic access$000(Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;)[[B
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;

    .line 74
    iget-object v0, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->fingerprints:[[B

    return-object v0
.end method

.method static synthetic access$100()Lio/netty/util/concurrent/FastThreadLocal;
    .locals 1

    .line 74
    sget-object v0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->tlmd:Lio/netty/util/concurrent/FastThreadLocal;

    return-object v0
.end method

.method private static toFingerprintArray(Ljava/lang/Iterable;)[[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)[[B"
        }
    .end annotation

    .line 178
    .local p0, "fingerprints":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    const-string v0, "fingerprints"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 181
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 182
    .local v2, "f":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 183
    goto :goto_1

    .line 186
    :cond_0
    sget-object v3, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->FINGERPRINT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    const-string v4, "malformed fingerprint: "

    if-eqz v3, :cond_2

    .line 189
    sget-object v3, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->FINGERPRINT_STRIP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x28

    if-ne v3, v5, :cond_1

    .line 194
    invoke-static {v2}, Lio/netty/util/internal/StringUtil;->decodeHexDump(Ljava/lang/CharSequence;)[B

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .end local v2    # "f":Ljava/lang/String;
    goto :goto_0

    .line 191
    .restart local v2    # "f":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (expected: SHA1)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 187
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 197
    .end local v2    # "f":Ljava/lang/String;
    :cond_3
    :goto_1
    const/4 v1, 0x0

    new-array v1, v1, [[B

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[B

    return-object v1
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    iget-object v1, p0, Lio/netty/handler/ssl/util/FingerprintTrustManagerFactory;->tm:Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0
    .param p1, "managerFactoryParameters"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    return-void
.end method
