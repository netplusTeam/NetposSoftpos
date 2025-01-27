.class final Lio/netty/handler/ssl/PemReader;
.super Ljava/lang/Object;
.source "PemReader.java"


# static fields
.field private static final CERT_PATTERN:Ljava/util/regex/Pattern;

.field private static final KEY_PATTERN:Ljava/util/regex/Pattern;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    const-class v0, Lio/netty/handler/ssl/PemReader;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemReader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 48
    const-string v0, "-+BEGIN\\s+.*CERTIFICATE[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*CERTIFICATE[^-]*-+"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemReader;->CERT_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "-+BEGIN\\s+.*PRIVATE\\s+KEY[^-]*-+(?:\\s|\\r|\\n)+([a-z0-9+/=\\r\\n]+)-+END\\s+.*PRIVATE\\s+KEY[^-]*-+"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/PemReader;->KEY_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readCertificates(Ljava/io/File;)[Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 61
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->readCertificates(Ljava/io/InputStream;)[Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :try_start_2
    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->safeClose(Ljava/io/InputStream;)V

    .line 64
    return-object v1

    .line 66
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->safeClose(Ljava/io/InputStream;)V

    .line 67
    nop

    .end local p0    # "file":Ljava/io/File;
    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 68
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find certificate file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readCertificates(Ljava/io/InputStream;)[Lio/netty/buffer/ByteBuf;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 76
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/ssl/PemReader;->readContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .local v0, "content":Ljava/lang/String;
    nop

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    sget-object v2, Lio/netty/handler/ssl/PemReader;->CERT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 83
    .local v2, "m":Ljava/util/regex/Matcher;
    const/4 v3, 0x0

    .line 85
    .local v3, "start":I
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 86
    nop

    .line 97
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 101
    const/4 v4, 0x0

    new-array v4, v4, [Lio/netty/buffer/ByteBuf;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lio/netty/buffer/ByteBuf;

    return-object v4

    .line 98
    :cond_0
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "found no certificates in input stream"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    :cond_1
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v4, v5}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 90
    .local v4, "base64":Lio/netty/buffer/ByteBuf;
    invoke-static {v4}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    .line 91
    .local v5, "der":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 92
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    .line 95
    .end local v4    # "base64":Lio/netty/buffer/ByteBuf;
    .end local v5    # "der":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 77
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "start":I
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "failed to read certificate input stream"

    invoke-direct {v1, v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static readContent(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    const/16 v1, 0x2000

    :try_start_0
    new-array v1, v1, [B

    .line 143
    .local v1, "buf":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 144
    .local v2, "ret":I
    if-gez v2, :cond_0

    .line 145
    nop

    .line 149
    .end local v2    # "ret":I
    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->safeClose(Ljava/io/OutputStream;)V

    .line 149
    return-object v2

    .line 147
    .restart local v2    # "ret":I
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 148
    .end local v2    # "ret":I
    goto :goto_0

    .line 151
    .end local v1    # "buf":[B
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->safeClose(Ljava/io/OutputStream;)V

    .line 152
    throw v1
.end method

.method static readPrivateKey(Ljava/io/File;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyException;
        }
    .end annotation

    .line 106
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .local v0, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->readPrivateKey(Ljava/io/InputStream;)Lio/netty/buffer/ByteBuf;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :try_start_2
    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->safeClose(Ljava/io/InputStream;)V

    .line 109
    return-object v1

    .line 111
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lio/netty/handler/ssl/PemReader;->safeClose(Ljava/io/InputStream;)V

    .line 112
    nop

    .end local p0    # "file":Ljava/io/File;
    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 113
    .end local v0    # "in":Ljava/io/InputStream;
    .restart local p0    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Ljava/security/KeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not find key file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static readPrivateKey(Ljava/io/InputStream;)Lio/netty/buffer/ByteBuf;
    .locals 4
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyException;
        }
    .end annotation

    .line 121
    :try_start_0
    invoke-static {p0}, Lio/netty/handler/ssl/PemReader;->readContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    .local v0, "content":Ljava/lang/String;
    nop

    .line 126
    sget-object v1, Lio/netty/handler/ssl/PemReader;->KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 127
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-static {v2, v3}, Lio/netty/buffer/Unpooled;->copiedBuffer(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    .line 133
    .local v2, "base64":Lio/netty/buffer/ByteBuf;
    invoke-static {v2}, Lio/netty/handler/codec/base64/Base64;->decode(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 134
    .local v3, "der":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 135
    return-object v3

    .line 128
    .end local v2    # "base64":Lio/netty/buffer/ByteBuf;
    .end local v3    # "der":Lio/netty/buffer/ByteBuf;
    :cond_0
    new-instance v2, Ljava/security/KeyException;

    const-string v3, "could not find a PKCS #8 private key in input stream (see https://netty.io/wiki/sslcontextbuilder-and-private-key.html for more information)"

    invoke-direct {v2, v3}, Ljava/security/KeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/security/KeyException;

    const-string v2, "failed to read key input stream"

    invoke-direct {v1, v2, v0}, Ljava/security/KeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static safeClose(Ljava/io/InputStream;)V
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;

    .line 157
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/handler/ssl/PemReader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close a stream."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private static safeClose(Ljava/io/OutputStream;)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    goto :goto_0

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/handler/ssl/PemReader;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to close a stream."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method
