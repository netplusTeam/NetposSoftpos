.class public final Lio/netty/handler/ssl/util/SelfSignedCertificate;
.super Ljava/lang/Object;
.source "SelfSignedCertificate.java"


# static fields
.field private static final DEFAULT_KEY_LENGTH_BITS:I

.field private static final DEFAULT_NOT_AFTER:Ljava/util/Date;

.field private static final DEFAULT_NOT_BEFORE:Ljava/util/Date;

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# instance fields
.field private final cert:Ljava/security/cert/X509Certificate;

.field private final certificate:Ljava/io/File;

.field private final key:Ljava/security/PrivateKey;

.field private final privateKey:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 62
    const-class v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 65
    new-instance v0, Ljava/util/Date;

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v3, 0x757b12c00L

    sub-long/2addr v1, v3

    .line 65
    const-string v3, "io.netty.selfSignedCertificate.defaultNotBefore"

    invoke-static {v3, v1, v2}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_BEFORE:Ljava/util/Date;

    .line 68
    new-instance v0, Ljava/util/Date;

    const-string v1, "io.netty.selfSignedCertificate.defaultNotAfter"

    const-wide v2, 0xe677d21fd818L

    invoke-static {v1, v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_AFTER:Ljava/util/Date;

    .line 76
    nop

    .line 77
    const-string v0, "io.netty.handler.ssl.util.selfSignedKeyStrength"

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lio/netty/util/internal/SystemPropertyUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_KEY_LENGTH_BITS:I

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 88
    sget-object v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_BEFORE:Ljava/util/Date;

    sget-object v1, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_AFTER:Ljava/util/Date;

    invoke-direct {p0, v0, v1}, Lio/netty/handler/ssl/util/SelfSignedCertificate;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "fqdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 106
    sget-object v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_BEFORE:Ljava/util/Date;

    sget-object v1, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_AFTER:Ljava/util/Date;

    invoke-direct {p0, p1, v0, v1}, Lio/netty/handler/ssl/util/SelfSignedCertificate;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;I)V
    .locals 6
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "bits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 130
    sget-object v4, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_BEFORE:Ljava/util/Date;

    sget-object v5, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_NOT_AFTER:Ljava/util/Date;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/util/SelfSignedCertificate;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;ILjava/util/Date;Ljava/util/Date;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/security/SecureRandom;ILjava/util/Date;Ljava/util/Date;)V
    .locals 8
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "bits"    # I
    .param p4, "notBefore"    # Ljava/util/Date;
    .param p5, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 143
    const-string v0, "Failed to close a file: "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    :try_start_0
    const-string v1, "RSA"

    invoke-static {v1}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 148
    .local v1, "keyGen":Ljava/security/KeyPairGenerator;
    invoke-virtual {v1, p3, p2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 149
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v1, v2

    .line 153
    .local v1, "keypair":Ljava/security/KeyPair;
    nop

    .line 158
    :try_start_1
    invoke-static {p1, v1, p2, p4, p5}, Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;->generate(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Ljava/util/Date;Ljava/util/Date;)[Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .local v2, "paths":[Ljava/lang/String;
    goto :goto_0

    .line 159
    .end local v2    # "paths":[Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 160
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Failed to generate a self-signed X.509 certificate using sun.security.x509:"

    invoke-interface {v3, v4, v2}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    :try_start_2
    invoke-static {p1, v1, p2, p4, p5}, Lio/netty/handler/ssl/util/BouncyCastleSelfSignedCertGenerator;->generate(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Ljava/util/Date;Ljava/util/Date;)[Ljava/lang/String;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    .local v3, "paths":[Ljava/lang/String;
    move-object v2, v3

    .line 174
    .end local v3    # "paths":[Ljava/lang/String;
    .local v2, "paths":[Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->certificate:Ljava/io/File;

    .line 175
    new-instance v4, Ljava/io/File;

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->privateKey:Ljava/io/File;

    .line 176
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v4

    iput-object v4, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->key:Ljava/security/PrivateKey;

    .line 177
    const/4 v4, 0x0

    .line 179
    .local v4, "certificateInput":Ljava/io/FileInputStream;
    :try_start_3
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v5

    .line 180
    const-string v3, "X509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    iput-object v3, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->cert:Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 184
    nop

    .line 186
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 191
    :cond_0
    :goto_1
    goto :goto_2

    .line 187
    :catch_0
    move-exception v3

    .line 188
    .local v3, "e":Ljava/io/IOException;
    sget-object v5, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v5}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 189
    sget-object v5, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->certificate:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v3}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 194
    .end local v3    # "e":Ljava/io/IOException;
    :goto_2
    return-void

    .line 184
    :catchall_1
    move-exception v3

    goto :goto_3

    .line 181
    :catch_1
    move-exception v3

    .line 182
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v5, v3}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "keypair":Ljava/security/KeyPair;
    .end local v2    # "paths":[Ljava/lang/String;
    .end local v4    # "certificateInput":Ljava/io/FileInputStream;
    .end local p1    # "fqdn":Ljava/lang/String;
    .end local p2    # "random":Ljava/security/SecureRandom;
    .end local p3    # "bits":I
    .end local p4    # "notBefore":Ljava/util/Date;
    .end local p5    # "notAfter":Ljava/util/Date;
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 184
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "keypair":Ljava/security/KeyPair;
    .restart local v2    # "paths":[Ljava/lang/String;
    .restart local v4    # "certificateInput":Ljava/io/FileInputStream;
    .restart local p1    # "fqdn":Ljava/lang/String;
    .restart local p2    # "random":Ljava/security/SecureRandom;
    .restart local p3    # "bits":I
    .restart local p4    # "notBefore":Ljava/util/Date;
    .restart local p5    # "notAfter":Ljava/util/Date;
    :goto_3
    if-eqz v4, :cond_1

    .line 186
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 191
    goto :goto_4

    .line 187
    :catch_2
    move-exception v5

    .line 188
    .local v5, "e":Ljava/io/IOException;
    sget-object v6, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v6}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    sget-object v6, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->certificate:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0, v5}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    .end local v5    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    throw v3

    .line 164
    .end local v4    # "certificateInput":Ljava/io/FileInputStream;
    .local v2, "t":Ljava/lang/Throwable;
    :catchall_2
    move-exception v0

    .line 165
    .local v0, "t2":Ljava/lang/Throwable;
    sget-object v3, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Failed to generate a self-signed X.509 certificate using Bouncy Castle:"

    invoke-interface {v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "No provider succeeded to generate a self-signed certificate. See debug log for the root cause."

    invoke-direct {v3, v4, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 169
    .local v3, "certificateException":Ljava/security/cert/CertificateException;
    invoke-static {v3, v2}, Lio/netty/util/internal/ThrowableUtil;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 170
    throw v3

    .line 150
    .end local v0    # "t2":Ljava/lang/Throwable;
    .end local v1    # "keypair":Ljava/security/KeyPair;
    .end local v2    # "t":Ljava/lang/Throwable;
    .end local v3    # "certificateException":Ljava/security/cert/CertificateException;
    :catch_3
    move-exception v0

    .line 152
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V
    .locals 6
    .param p1, "fqdn"    # Ljava/lang/String;
    .param p2, "notBefore"    # Ljava/util/Date;
    .param p3, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 119
    invoke-static {}, Lio/netty/handler/ssl/util/ThreadLocalInsecureRandom;->current()Ljava/security/SecureRandom;

    move-result-object v2

    sget v3, Lio/netty/handler/ssl/util/SelfSignedCertificate;->DEFAULT_KEY_LENGTH_BITS:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lio/netty/handler/ssl/util/SelfSignedCertificate;-><init>(Ljava/lang/String;Ljava/security/SecureRandom;ILjava/util/Date;Ljava/util/Date;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "notBefore"    # Ljava/util/Date;
    .param p2, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 97
    const-string v0, "example.com"

    invoke-direct {p0, v0, p1, p2}, Lio/netty/handler/ssl/util/SelfSignedCertificate;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;)V

    .line 98
    return-void
.end method

.method static newSelfSignedCertificate(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[Ljava/lang/String;
    .locals 12
    .param p0, "fqdn"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/security/PrivateKey;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 235
    invoke-interface {p1}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 239
    .local v0, "wrappedBuf":Lio/netty/buffer/ByteBuf;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 241
    .local v2, "encodedBuf":Lio/netty/buffer/ByteBuf;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----BEGIN PRIVATE KEY-----\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 242
    invoke-virtual {v2, v4}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n-----END PRIVATE KEY-----\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 245
    .local v3, "keyText":Ljava/lang/String;
    :try_start_2
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 246
    nop

    .line 248
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 249
    nop

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyutil_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x5f

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, ".key"

    invoke-static {v4, v7}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 252
    .local v4, "keyFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->deleteOnExit()V

    .line 254
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 256
    .local v7, "keyOut":Ljava/io/OutputStream;
    :try_start_3
    sget-object v8, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/OutputStream;->write([B)V

    .line 257
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 258
    const/4 v7, 0x0

    .line 260
    if-eqz v7, :cond_0

    .line 261
    invoke-static {v4, v7}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeClose(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 262
    invoke-static {v4}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 266
    :cond_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    invoke-static {v8}, Lio/netty/buffer/Unpooled;->wrappedBuffer([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 269
    :try_start_4
    invoke-static {v0, v1}, Lio/netty/handler/codec/base64/Base64;->encode(Lio/netty/buffer/ByteBuf;Z)Lio/netty/buffer/ByteBuf;

    move-result-object v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v2, v8

    .line 272
    :try_start_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-----BEGIN CERTIFICATE-----\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 273
    invoke-virtual {v2, v9}, Lio/netty/buffer/ByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n-----END CERTIFICATE-----\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 276
    .local v8, "certText":Ljava/lang/String;
    :try_start_6
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 277
    nop

    .line 279
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 280
    nop

    .line 282
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ".crt"

    invoke-static {v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 283
    .local v5, "certFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->deleteOnExit()V

    .line 285
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 287
    .local v6, "certOut":Ljava/io/OutputStream;
    :try_start_7
    sget-object v9, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/io/OutputStream;->write([B)V

    .line 288
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 289
    const/4 v6, 0x0

    .line 291
    if-eqz v6, :cond_1

    .line 292
    invoke-static {v5, v6}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeClose(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 293
    invoke-static {v5}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 294
    invoke-static {v4}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 298
    :cond_1
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v1

    return-object v9

    .line 291
    :catchall_0
    move-exception v1

    .line 292
    invoke-static {v5, v6}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeClose(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 293
    invoke-static {v5}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 294
    invoke-static {v4}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 296
    throw v1

    .line 276
    .end local v5    # "certFile":Ljava/io/File;
    .end local v6    # "certOut":Ljava/io/OutputStream;
    .end local v8    # "certText":Ljava/lang/String;
    :catchall_1
    move-exception v1

    :try_start_8
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 277
    nop

    .end local v0    # "wrappedBuf":Lio/netty/buffer/ByteBuf;
    .end local v2    # "encodedBuf":Lio/netty/buffer/ByteBuf;
    .end local v3    # "keyText":Ljava/lang/String;
    .end local v4    # "keyFile":Ljava/io/File;
    .end local v7    # "keyOut":Ljava/io/OutputStream;
    .end local p0    # "fqdn":Ljava/lang/String;
    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "cert":Ljava/security/cert/X509Certificate;
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 279
    .restart local v0    # "wrappedBuf":Lio/netty/buffer/ByteBuf;
    .restart local v2    # "encodedBuf":Lio/netty/buffer/ByteBuf;
    .restart local v3    # "keyText":Ljava/lang/String;
    .restart local v4    # "keyFile":Ljava/io/File;
    .restart local v7    # "keyOut":Ljava/io/OutputStream;
    .restart local p0    # "fqdn":Ljava/lang/String;
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p2    # "cert":Ljava/security/cert/X509Certificate;
    :catchall_2
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 280
    throw v1

    .line 260
    :catchall_3
    move-exception v1

    .line 261
    invoke-static {v4, v7}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeClose(Ljava/io/File;Ljava/io/OutputStream;)V

    .line 262
    invoke-static {v4}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 264
    throw v1

    .line 245
    .end local v3    # "keyText":Ljava/lang/String;
    .end local v4    # "keyFile":Ljava/io/File;
    .end local v7    # "keyOut":Ljava/io/OutputStream;
    :catchall_4
    move-exception v1

    :try_start_9
    invoke-virtual {v2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 246
    nop

    .end local v0    # "wrappedBuf":Lio/netty/buffer/ByteBuf;
    .end local p0    # "fqdn":Ljava/lang/String;
    .end local p1    # "key":Ljava/security/PrivateKey;
    .end local p2    # "cert":Ljava/security/cert/X509Certificate;
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 248
    .end local v2    # "encodedBuf":Lio/netty/buffer/ByteBuf;
    .restart local v0    # "wrappedBuf":Lio/netty/buffer/ByteBuf;
    .restart local p0    # "fqdn":Ljava/lang/String;
    .restart local p1    # "key":Ljava/security/PrivateKey;
    .restart local p2    # "cert":Ljava/security/cert/X509Certificate;
    :catchall_5
    move-exception v1

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 249
    throw v1
.end method

.method private static safeClose(Ljava/io/File;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "keyFile"    # Ljava/io/File;
    .param p1, "keyOut"    # Ljava/io/OutputStream;

    .line 311
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    sget-object v1, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to close a file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private static safeDelete(Ljava/io/File;)V
    .locals 3
    .param p0, "certFile"    # Ljava/io/File;

    .line 302
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    sget-object v0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v0}, Lio/netty/util/internal/logging/InternalLogger;->isWarnEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete a file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;)V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method public cert()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 214
    iget-object v0, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->cert:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public certificate()Ljava/io/File;
    .locals 1

    .line 200
    iget-object v0, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->certificate:Ljava/io/File;

    return-object v0
.end method

.method public delete()V
    .locals 1

    .line 228
    iget-object v0, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->certificate:Ljava/io/File;

    invoke-static {v0}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 229
    iget-object v0, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->privateKey:Ljava/io/File;

    invoke-static {v0}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->safeDelete(Ljava/io/File;)V

    .line 230
    return-void
.end method

.method public key()Ljava/security/PrivateKey;
    .locals 1

    .line 221
    iget-object v0, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->key:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public privateKey()Ljava/io/File;
    .locals 1

    .line 207
    iget-object v0, p0, Lio/netty/handler/ssl/util/SelfSignedCertificate;->privateKey:Ljava/io/File;

    return-object v0
.end method
