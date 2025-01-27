.class final Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;
.super Lio/netty/handler/ssl/SslMasterKeyHandler;
.source "SslMasterKeyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/SslMasterKeyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WiresharkSslMasterKeyHandler"
.end annotation


# static fields
.field private static final hexCode:[C

.field private static final wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    nop

    .line 172
    const-string v0, "io.netty.wireshark"

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/String;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 174
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->hexCode:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lio/netty/handler/ssl/SslMasterKeyHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/ssl/SslMasterKeyHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/ssl/SslMasterKeyHandler$1;

    .line 169
    invoke-direct {p0}, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected accept(Ljavax/crypto/SecretKey;Ljavax/net/ssl/SSLSession;)V
    .locals 5
    .param p1, "masterKey"    # Ljavax/crypto/SecretKey;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .line 178
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    .line 181
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 182
    .local v0, "sessionId":[B
    sget-object v1, Lio/netty/handler/ssl/SslMasterKeyHandler$WiresharkSslMasterKeyHandler;->wireshark_logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 183
    invoke-static {v0}, Lio/netty/buffer/ByteBufUtil;->hexDump([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 184
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lio/netty/buffer/ByteBufUtil;->hexDump([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 182
    const-string v4, "RSA Session-ID:{} Master-Key:{}"

    invoke-interface {v1, v4, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    return-void

    .line 179
    .end local v0    # "sessionId":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An invalid length master key was provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
