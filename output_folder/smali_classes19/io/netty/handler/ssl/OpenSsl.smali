.class public final Lio/netty/handler/ssl/OpenSsl;
.super Ljava/lang/Object;
.source "OpenSsl.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final AVAILABLE_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CERT:Ljava/lang/String; = "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

.field static final DEFAULT_CIPHERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final IS_BORINGSSL:Z

.field private static final KEY:Ljava/lang/String; = "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----"

.field static final SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTS_KEYMANAGER_FACTORY:Z

.field private static final SUPPORTS_OCSP:Z

.field private static final TLSV13_SUPPORTED:Z

.field private static final UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

.field private static final USE_KEYMANAGER_FACTORY:Z

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 39

    .line 50
    const-string v1, "io.netty.handler.ssl.openssl.useKeyManagerFactory"

    const-class v0, Lio/netty/handler/ssl/OpenSsl;

    .line 52
    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 109
    const/4 v3, 0x0

    .line 111
    .local v3, "cause":Ljava/lang/Throwable;
    const-string v4, "io.netty.handler.ssl.noOpenSsl"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string v6, " will be unavailable."

    const/4 v7, 0x0

    if-eqz v4, :cond_0

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v4, "OpenSSL was explicit disabled with -Dio.netty.handler.ssl.noOpenSsl=true"

    invoke-direct {v0, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 115
    .end local v3    # "cause":Ljava/lang/Throwable;
    .local v0, "cause":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "netty-tcnative explicit disabled; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lio/netty/handler/ssl/OpenSslEngine;

    .line 117
    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-interface {v2, v3, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v0

    goto/16 :goto_4

    .line 121
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    :cond_0
    :try_start_0
    const-string v2, "io.netty.internal.tcnative.SSL"

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v2, v5, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "t":Ljava/lang/ClassNotFoundException;
    move-object v3, v0

    .line 124
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "netty-tcnative not in the classpath; "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v8, Lio/netty/handler/ssl/OpenSslEngine;

    .line 126
    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-interface {v2, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    .line 130
    .end local v0    # "t":Ljava/lang/ClassNotFoundException;
    :goto_0
    if-nez v3, :cond_3

    .line 133
    :try_start_1
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->loadTcNative()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    goto :goto_1

    .line 134
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 135
    .local v0, "t":Ljava/lang/Throwable;
    move-object v3, v0

    .line 136
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load netty-tcnative; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v6, Lio/netty/handler/ssl/OpenSslEngine;

    .line 138
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " will be unavailable, unless the application has already loaded the symbols by some other means. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-interface {v2, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 144
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    :try_start_2
    const-string v0, "io.netty.handler.ssl.openssl.engine"

    invoke-static {v0, v7}, Lio/netty/util/internal/SystemPropertyUtil;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "engine":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 146
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Initialize netty-tcnative using engine: \'default\'"

    invoke-interface {v2, v4}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 148
    :cond_1
    sget-object v2, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v4, "Initialize netty-tcnative using engine: \'{}\'"

    invoke-interface {v2, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    :goto_2
    invoke-static {v0}, Lio/netty/handler/ssl/OpenSsl;->initializeTcNative(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 155
    const/4 v0, 0x0

    .line 164
    .end local v3    # "cause":Ljava/lang/Throwable;
    .local v0, "cause":Ljava/lang/Throwable;
    move-object v2, v0

    goto :goto_4

    .line 156
    .end local v0    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 157
    .local v0, "t":Ljava/lang/Throwable;
    if-nez v3, :cond_2

    .line 158
    move-object v2, v0

    .end local v3    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    goto :goto_3

    .line 157
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    :cond_2
    move-object v2, v3

    .line 160
    .end local v3    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :goto_3
    sget-object v3, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to initialize netty-tcnative; "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v6, Lio/netty/handler/ssl/OpenSslEngine;

    .line 162
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " will be unavailable. See https://netty.io/wiki/forked-tomcat-native.html for more information."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 160
    invoke-interface {v3, v4, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 130
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v3    # "cause":Ljava/lang/Throwable;
    :cond_3
    move-object v2, v3

    .line 168
    .end local v3    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :goto_4
    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    .line 170
    if-nez v2, :cond_1e

    .line 171
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "netty-tcnative using native library: {}"

    invoke-interface {v0, v4, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 174
    .local v3, "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    const/16 v4, 0x80

    invoke-direct {v0, v4}, Ljava/util/LinkedHashSet;-><init>(I)V

    move-object v4, v0

    .line 175
    .local v4, "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 176
    .local v6, "supportsKeyManagerFactory":Z
    const/4 v8, 0x0

    .line 177
    .local v8, "useKeyManagerFactory":Z
    const/4 v9, 0x0

    .line 179
    .local v9, "tlsv13Supported":Z
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->versionString()Ljava/lang/String;

    move-result-object v0

    const-string v10, "BoringSSL"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    .line 182
    const/16 v0, 0x3f

    const/4 v10, 0x1

    :try_start_3
    invoke-static {v0, v10}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_a

    .line 183
    .local v11, "sslCtx":J
    const-wide/16 v13, 0x0

    .line 184
    .local v13, "certBio":J
    const-wide/16 v15, 0x0

    .line 185
    .local v15, "keyBio":J
    const-wide/16 v17, 0x0

    .line 186
    .local v17, "cert":J
    const-wide/16 v19, 0x0

    .line 189
    .local v19, "key":J
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v0, "tlsv13Ciphers":Ljava/lang/StringBuilder;
    sget-object v21, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHERS:Ljava/util/Set;

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v23, v22

    .line 192
    .local v23, "cipher":Ljava/lang/String;
    sget-boolean v7, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    move-object/from16 v5, v23

    .end local v23    # "cipher":Ljava/lang/String;
    .local v5, "cipher":Ljava/lang/String;
    invoke-static {v5, v7}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 193
    .local v7, "converted":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 194
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object/from16 v24, v2

    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v24, "cause":Ljava/lang/Throwable;
    const/16 v2, 0x3a

    :try_start_5
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 193
    .end local v24    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_4
    move-object/from16 v24, v2

    .line 196
    .end local v2    # "cause":Ljava/lang/Throwable;
    .end local v5    # "cipher":Ljava/lang/String;
    .end local v7    # "converted":Ljava/lang/String;
    .restart local v24    # "cause":Ljava/lang/Throwable;
    :goto_6
    move-object/from16 v2, v24

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x1

    goto :goto_5

    .line 197
    .end local v24    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :cond_5
    move-object/from16 v24, v2

    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v24    # "cause":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_6

    .line 198
    const/4 v2, 0x0

    .end local v9    # "tlsv13Supported":Z
    .local v2, "tlsv13Supported":Z
    goto :goto_7

    .line 200
    .end local v2    # "tlsv13Supported":Z
    .restart local v9    # "tlsv13Supported":Z
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v12, v2, v5}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 202
    const/4 v2, 0x1

    .line 207
    .end local v0    # "tlsv13Ciphers":Ljava/lang/StringBuilder;
    .end local v9    # "tlsv13Supported":Z
    .restart local v2    # "tlsv13Supported":Z
    :goto_7
    move v9, v2

    goto :goto_9

    .line 294
    .end local v2    # "tlsv13Supported":Z
    .restart local v9    # "tlsv13Supported":Z
    :catchall_2
    move-exception v0

    goto/16 :goto_13

    .line 205
    :catch_1
    move-exception v0

    goto :goto_8

    .line 294
    .end local v24    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    :catchall_3
    move-exception v0

    move-object/from16 v24, v2

    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v24    # "cause":Ljava/lang/Throwable;
    goto/16 :goto_13

    .line 205
    .end local v24    # "cause":Ljava/lang/Throwable;
    .restart local v2    # "cause":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    move-object/from16 v24, v2

    .line 206
    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v0, "ignore":Ljava/lang/Exception;
    .restart local v24    # "cause":Ljava/lang/Throwable;
    :goto_8
    const/4 v2, 0x0

    .end local v9    # "tlsv13Supported":Z
    .local v2, "tlsv13Supported":Z
    move v9, v2

    .line 209
    .end local v0    # "ignore":Ljava/lang/Exception;
    .end local v2    # "tlsv13Supported":Z
    .restart local v9    # "tlsv13Supported":Z
    :goto_9
    :try_start_6
    const-string v0, "ALL"

    const/4 v2, 0x0

    invoke-static {v11, v12, v0, v2}, Lio/netty/internal/tcnative/SSLContext;->setCipherSuite(JLjava/lang/String;Z)Z

    .line 211
    const/4 v2, 0x1

    invoke-static {v11, v12, v2}, Lio/netty/internal/tcnative/SSL;->newSSL(JZ)J

    move-result-wide v25
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_11

    .line 213
    .local v25, "ssl":J
    const-wide/16 v31, 0x0

    :try_start_7
    invoke-static/range {v25 .. v26}, Lio/netty/internal/tcnative/SSL;->getCiphers(J)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_10

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_9

    :try_start_8
    aget-object v7, v0, v5

    .line 215
    .local v7, "c":Ljava/lang/String;
    if-eqz v7, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    if-nez v9, :cond_7

    .line 217
    invoke-static {v7}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 218
    goto :goto_b

    .line 220
    :cond_7
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 213
    .end local v7    # "c":Ljava/lang/String;
    :cond_8
    :goto_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 279
    :catchall_4
    move-exception v0

    goto/16 :goto_12

    .line 222
    :cond_9
    :try_start_9
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_10

    if-eqz v0, :cond_a

    .line 225
    :try_start_a
    const-string v33, "TLS_AES_128_GCM_SHA256"

    const-string v34, "TLS_AES_256_GCM_SHA384"

    const-string v35, "TLS_CHACHA20_POLY1305_SHA256"

    const-string v36, "AEAD-AES128-GCM-SHA256"

    const-string v37, "AEAD-AES256-GCM-SHA384"

    const-string v38, "AEAD-CHACHA20-POLY1305-SHA256"

    filled-new-array/range {v33 .. v38}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 234
    :cond_a
    :try_start_b
    const-string v2, "-----BEGIN PRIVATE KEY-----\nMIIEvQIBADANBgkqhkiG9w0BAQEFAASCBKcwggSjAgEAAoIBAQCCBtayYNDrM3NFnkBbwTd6gaWp\na84ENvkWzWgFGtVAe5iZUChqrAPNdgnQs7Brb3cCBYRDWOlxtnaGmhhDOoRkFMucWEyuFEWUfops\nk0PxjfeRn+JJUEEO4Zt1JslKGUz7hbBD0gCyjgxni9bdLWK/l8YakuBu1dGYF/9FTyiY3QaKOW9a\nUtYdaKMs3zFC3JIW4FDuyxbxFwoBqvLelSbpRRAH4KjqWd+2LRPNqDw+COEAmrZnfBuwZGc/ZhK9\nihorqrOYddFiWn8/GuMEBkCaQsmzhhOb9cUX5+R5jHiL3OodvKid7nJ6tGJuwdpdlYudQv6sWh4x\n0q+vRVLewaaFAgMBAAECggEAP8tPJvFtTxhNJAkCloHz0D0vpDHqQBMgntlkgayqmBqLwhyb18pR\ni0qwgh7HHc7wWqOOQuSqlEnrWRrdcI6TSe8R/sErzfTQNoznKWIPYcI/hskk4sdnQ//Yn9/Jvnsv\nU/BBjOTJxtD+sQbhAl80JcA3R+5sArURQkfzzHOL/YMqzAsn5hTzp7HZCxUqBk3KaHRxV7NefeOE\nxlZuWSmxYWfbFIs4kx19/1t7h8CHQWezw+G60G2VBtSBBxDnhBWvqG6R/wpzJ3nEhPLLY9T+XIHe\nipzdMOOOUZorfIg7M+pyYPji+ZIZxIpY5OjrOzXHciAjRtr5Y7l99K1CG1LguQKBgQDrQfIMxxtZ\nvxU/1cRmUV9l7pt5bjV5R6byXq178LxPKVYNjdZ840Q0/OpZEVqaT1xKVi35ohP1QfNjxPLlHD+K\niDAR9z6zkwjIrbwPCnb5kuXy4lpwPcmmmkva25fI7qlpHtbcuQdoBdCfr/KkKaUCMPyY89LCXgEw\n5KTDj64UywKBgQCNfbO+eZLGzhiHhtNJurresCsIGWlInv322gL8CSfBMYl6eNfUTZvUDdFhPISL\nUljKWzXDrjw0ujFSPR0XhUGtiq89H+HUTuPPYv25gVXO+HTgBFZEPl4PpA+BUsSVZy0NddneyqLk\n42Wey9omY9Q8WsdNQS5cbUvy0uG6WFoX7wKBgQDZ1jpW8pa0x2bZsQsm4vo+3G5CRnZlUp+XlWt2\ndDcp5dC0xD1zbs1dc0NcLeGDOTDv9FSl7hok42iHXXq8AygjEm/QcuwwQ1nC2HxmQP5holAiUs4D\nWHM8PWs3wFYPzE459EBoKTxeaeP/uWAn+he8q7d5uWvSZlEcANs/6e77eQKBgD21Ar0hfFfj7mK8\n9E0FeRZBsqK3omkfnhcYgZC11Xa2SgT1yvs2Va2n0RcdM5kncr3eBZav2GYOhhAdwyBM55XuE/sO\neokDVutNeuZ6d5fqV96TRaRBpvgfTvvRwxZ9hvKF4Vz+9wfn/JvCwANaKmegF6ejs7pvmF3whq2k\ndrZVAoGAX5YxQ5XMTD0QbMAl7/6qp6S58xNoVdfCkmkj1ZLKaHKIjS/benkKGlySVQVPexPfnkZx\np/Vv9yyphBoudiTBS9Uog66ueLYZqpgxlM/6OhYg86Gm3U2ycvMxYjBM1NFiyze21AqAhI+HX+Ot\nmraV2/guSgDgZAhukRZzeQ2RucI=\n-----END PRIVATE KEY-----"

    sget-object v5, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lio/netty/handler/ssl/PemPrivateKey;->valueOf([B)Lio/netty/handler/ssl/PemPrivateKey;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_10

    .line 238
    .local v2, "privateKey":Lio/netty/handler/ssl/PemEncoded;
    const/4 v5, 0x0

    :try_start_c
    invoke-static {v11, v12, v5}, Lio/netty/internal/tcnative/SSLContext;->setCertificateCallback(JLio/netty/internal/tcnative/CertificateCallback;)V

    .line 240
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->selfSignedCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v5

    .line 241
    .local v5, "certificate":Ljava/security/cert/X509Certificate;
    sget-object v7, Lio/netty/buffer/ByteBufAllocator;->DEFAULT:Lio/netty/buffer/ByteBufAllocator;
    :try_end_c
    .catch Ljava/lang/Error; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    move/from16 v21, v6

    const/4 v10, 0x1

    .end local v6    # "supportsKeyManagerFactory":Z
    .local v21, "supportsKeyManagerFactory":Z
    :try_start_d
    new-array v6, v10, [Ljava/security/cert/X509Certificate;

    const/4 v10, 0x0

    aput-object v5, v6, v10

    invoke-static {v7, v6}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;[Ljava/security/cert/X509Certificate;)J

    move-result-wide v6

    move-wide v13, v6

    .line 242
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->parseX509Chain(J)J

    move-result-wide v27
    :try_end_d
    .catch Ljava/lang/Error; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    .line 244
    .end local v17    # "cert":J
    .local v27, "cert":J
    :try_start_e
    sget-object v6, Lio/netty/buffer/UnpooledByteBufAllocator;->DEFAULT:Lio/netty/buffer/UnpooledByteBufAllocator;

    .line 245
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->retain()Lio/netty/handler/ssl/PemEncoded;

    move-result-object v7

    .line 244
    invoke-static {v6, v7}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->toBIO(Lio/netty/buffer/ByteBufAllocator;Lio/netty/handler/ssl/PemEncoded;)J

    move-result-wide v6
    :try_end_e
    .catch Ljava/lang/Error; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 246
    .end local v15    # "keyBio":J
    .local v6, "keyBio":J
    const/4 v10, 0x0

    :try_start_f
    invoke-static {v6, v7, v10}, Lio/netty/internal/tcnative/SSL;->parsePrivateKey(JLjava/lang/String;)J

    move-result-wide v29
    :try_end_f
    .catch Ljava/lang/Error; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    .line 248
    .end local v19    # "key":J
    .local v29, "key":J
    :try_start_10
    invoke-static/range {v25 .. v30}, Lio/netty/internal/tcnative/SSL;->setKeyMaterial(JJJ)V
    :try_end_10
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    .line 249
    const/4 v10, 0x1

    .line 251
    .end local v21    # "supportsKeyManagerFactory":Z
    .local v10, "supportsKeyManagerFactory":Z
    :try_start_11
    invoke-static {v1}, Lio/netty/util/internal/SystemPropertyUtil;->contains(Ljava/lang/String;)Z

    move-result v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 253
    .local v15, "propertySet":Z
    if-nez v0, :cond_b

    .line 254
    move-object/from16 v22, v5

    const/4 v5, 0x1

    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .local v22, "certificate":Ljava/security/cert/X509Certificate;
    :try_start_12
    invoke-static {v1, v5}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move v1, v0

    .line 257
    .end local v8    # "useKeyManagerFactory":Z
    .local v1, "useKeyManagerFactory":Z
    if-eqz v15, :cond_c

    .line 258
    :try_start_13
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and so will be ignored in the future"

    invoke-interface {v0, v5}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V

    goto :goto_c

    .line 270
    .end local v1    # "useKeyManagerFactory":Z
    .end local v15    # "propertySet":Z
    .restart local v8    # "useKeyManagerFactory":Z
    :catchall_5
    move-exception v0

    goto :goto_d

    .line 263
    .end local v22    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v15    # "propertySet":Z
    :cond_b
    move-object/from16 v22, v5

    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v22    # "certificate":Ljava/security/cert/X509Certificate;
    const/4 v1, 0x1

    .line 264
    .end local v8    # "useKeyManagerFactory":Z
    .restart local v1    # "useKeyManagerFactory":Z
    if-eqz v15, :cond_c

    .line 265
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "System property \'io.netty.handler.ssl.openssl.useKeyManagerFactory\' is deprecated and will be ignored when using BoringSSL"

    invoke-interface {v0, v5}, Lio/netty/util/internal/logging/InternalLogger;->info(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    goto :goto_c

    .line 270
    .end local v15    # "propertySet":Z
    :catchall_6
    move-exception v0

    move v8, v1

    goto :goto_d

    .line 272
    :cond_c
    :goto_c
    goto :goto_e

    .line 270
    .end local v1    # "useKeyManagerFactory":Z
    .end local v22    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v8    # "useKeyManagerFactory":Z
    :catchall_7
    move-exception v0

    move-object/from16 v22, v5

    .line 271
    .end local v5    # "certificate":Ljava/security/cert/X509Certificate;
    .local v0, "ignore":Ljava/lang/Throwable;
    .restart local v22    # "certificate":Ljava/security/cert/X509Certificate;
    :goto_d
    :try_start_14
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "Failed to get useKeyManagerFactory system property."

    invoke-interface {v1, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Error; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_9

    move v1, v8

    .line 276
    .end local v0    # "ignore":Ljava/lang/Throwable;
    .end local v8    # "useKeyManagerFactory":Z
    .end local v22    # "certificate":Ljava/security/cert/X509Certificate;
    .restart local v1    # "useKeyManagerFactory":Z
    :goto_e
    :try_start_15
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->release()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 277
    move v8, v1

    move-wide v15, v6

    move v6, v10

    move-wide/from16 v17, v27

    move-wide/from16 v19, v29

    goto/16 :goto_10

    .line 279
    .end local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    :catchall_8
    move-exception v0

    move v8, v1

    move-wide v15, v6

    move v6, v10

    move-wide/from16 v17, v27

    move-wide/from16 v19, v29

    goto/16 :goto_12

    .line 276
    .end local v1    # "useKeyManagerFactory":Z
    .restart local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    .restart local v8    # "useKeyManagerFactory":Z
    :catchall_9
    move-exception v0

    move-wide v15, v6

    move v6, v10

    move-wide/from16 v17, v27

    move-wide/from16 v19, v29

    goto/16 :goto_11

    .line 273
    :catch_3
    move-exception v0

    move-wide v15, v6

    move v6, v10

    move-wide/from16 v17, v27

    move-wide/from16 v19, v29

    goto :goto_f

    .line 276
    .end local v10    # "supportsKeyManagerFactory":Z
    .restart local v21    # "supportsKeyManagerFactory":Z
    :catchall_a
    move-exception v0

    move-wide v15, v6

    move/from16 v6, v21

    move-wide/from16 v17, v27

    move-wide/from16 v19, v29

    goto/16 :goto_11

    .line 273
    :catch_4
    move-exception v0

    move-wide v15, v6

    move/from16 v6, v21

    move-wide/from16 v17, v27

    move-wide/from16 v19, v29

    goto :goto_f

    .line 276
    .end local v29    # "key":J
    .restart local v19    # "key":J
    :catchall_b
    move-exception v0

    move-wide v15, v6

    move/from16 v6, v21

    move-wide/from16 v17, v27

    goto :goto_11

    .line 273
    :catch_5
    move-exception v0

    move-wide v15, v6

    move/from16 v6, v21

    move-wide/from16 v17, v27

    goto :goto_f

    .line 276
    .end local v6    # "keyBio":J
    .local v15, "keyBio":J
    :catchall_c
    move-exception v0

    move/from16 v6, v21

    move-wide/from16 v17, v27

    goto :goto_11

    .line 273
    :catch_6
    move-exception v0

    move/from16 v6, v21

    move-wide/from16 v17, v27

    goto :goto_f

    .line 276
    .end local v27    # "cert":J
    .restart local v17    # "cert":J
    :catchall_d
    move-exception v0

    move/from16 v6, v21

    goto :goto_11

    .line 273
    :catch_7
    move-exception v0

    move/from16 v6, v21

    goto :goto_f

    .line 276
    .end local v21    # "supportsKeyManagerFactory":Z
    .local v6, "supportsKeyManagerFactory":Z
    :catchall_e
    move-exception v0

    move/from16 v21, v6

    .end local v6    # "supportsKeyManagerFactory":Z
    .restart local v21    # "supportsKeyManagerFactory":Z
    goto :goto_11

    .line 273
    .end local v21    # "supportsKeyManagerFactory":Z
    .restart local v6    # "supportsKeyManagerFactory":Z
    :catch_8
    move-exception v0

    move/from16 v21, v6

    .line 274
    .local v0, "ignore":Ljava/lang/Error;
    :goto_f
    :try_start_16
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v5, "KeyManagerFactory not supported."

    invoke-interface {v1, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    .line 276
    .end local v0    # "ignore":Ljava/lang/Error;
    :try_start_17
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->release()Z
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    .line 277
    nop

    .line 279
    .end local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    :goto_10
    :try_start_18
    invoke-static/range {v25 .. v26}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    .line 280
    cmp-long v0, v13, v31

    if-eqz v0, :cond_d

    .line 281
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 283
    :cond_d
    cmp-long v0, v15, v31

    if-eqz v0, :cond_e

    .line 284
    invoke-static/range {v15 .. v16}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 286
    :cond_e
    cmp-long v0, v17, v31

    if-eqz v0, :cond_f

    .line 287
    invoke-static/range {v17 .. v18}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 289
    :cond_f
    cmp-long v0, v19, v31

    if-eqz v0, :cond_10

    .line 290
    invoke-static/range {v19 .. v20}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 294
    .end local v25    # "ssl":J
    :cond_10
    :try_start_19
    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSLContext;->free(J)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_9

    .line 295
    nop

    .line 298
    .end local v11    # "sslCtx":J
    .end local v13    # "certBio":J
    .end local v15    # "keyBio":J
    .end local v17    # "cert":J
    .end local v19    # "key":J
    goto :goto_15

    .line 276
    .restart local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    .restart local v11    # "sslCtx":J
    .restart local v13    # "certBio":J
    .restart local v15    # "keyBio":J
    .restart local v17    # "cert":J
    .restart local v19    # "key":J
    .restart local v25    # "ssl":J
    :catchall_f
    move-exception v0

    :goto_11
    :try_start_1a
    invoke-interface {v2}, Lio/netty/handler/ssl/PemEncoded;->release()Z

    .line 277
    nop

    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "supportsKeyManagerFactory":Z
    .end local v8    # "useKeyManagerFactory":Z
    .end local v9    # "tlsv13Supported":Z
    .end local v11    # "sslCtx":J
    .end local v13    # "certBio":J
    .end local v15    # "keyBio":J
    .end local v17    # "cert":J
    .end local v19    # "key":J
    .end local v24    # "cause":Ljava/lang/Throwable;
    .end local v25    # "ssl":J
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    .line 279
    .end local v2    # "privateKey":Lio/netty/handler/ssl/PemEncoded;
    .restart local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "supportsKeyManagerFactory":Z
    .restart local v8    # "useKeyManagerFactory":Z
    .restart local v9    # "tlsv13Supported":Z
    .restart local v11    # "sslCtx":J
    .restart local v13    # "certBio":J
    .restart local v15    # "keyBio":J
    .restart local v17    # "cert":J
    .restart local v19    # "key":J
    .restart local v24    # "cause":Ljava/lang/Throwable;
    .restart local v25    # "ssl":J
    :catchall_10
    move-exception v0

    move/from16 v21, v6

    :goto_12
    :try_start_1b
    invoke-static/range {v25 .. v26}, Lio/netty/internal/tcnative/SSL;->freeSSL(J)V

    .line 280
    cmp-long v1, v13, v31

    if-eqz v1, :cond_11

    .line 281
    invoke-static {v13, v14}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 283
    :cond_11
    cmp-long v1, v15, v31

    if-eqz v1, :cond_12

    .line 284
    invoke-static/range {v15 .. v16}, Lio/netty/internal/tcnative/SSL;->freeBIO(J)V

    .line 286
    :cond_12
    cmp-long v1, v17, v31

    if-eqz v1, :cond_13

    .line 287
    invoke-static/range {v17 .. v18}, Lio/netty/internal/tcnative/SSL;->freeX509Chain(J)V

    .line 289
    :cond_13
    cmp-long v1, v19, v31

    if-eqz v1, :cond_14

    .line 290
    invoke-static/range {v19 .. v20}, Lio/netty/internal/tcnative/SSL;->freePrivateKey(J)V

    .line 292
    :cond_14
    nop

    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "supportsKeyManagerFactory":Z
    .end local v8    # "useKeyManagerFactory":Z
    .end local v9    # "tlsv13Supported":Z
    .end local v11    # "sslCtx":J
    .end local v13    # "certBio":J
    .end local v15    # "keyBio":J
    .end local v17    # "cert":J
    .end local v19    # "key":J
    .end local v24    # "cause":Ljava/lang/Throwable;
    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    .line 294
    .end local v25    # "ssl":J
    .restart local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "supportsKeyManagerFactory":Z
    .restart local v8    # "useKeyManagerFactory":Z
    .restart local v9    # "tlsv13Supported":Z
    .restart local v11    # "sslCtx":J
    .restart local v13    # "certBio":J
    .restart local v15    # "keyBio":J
    .restart local v17    # "cert":J
    .restart local v19    # "key":J
    .restart local v24    # "cause":Ljava/lang/Throwable;
    :catchall_11
    move-exception v0

    move/from16 v21, v6

    :goto_13
    :try_start_1c
    invoke-static {v11, v12}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 295
    nop

    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "supportsKeyManagerFactory":Z
    .end local v8    # "useKeyManagerFactory":Z
    .end local v9    # "tlsv13Supported":Z
    .end local v24    # "cause":Ljava/lang/Throwable;
    throw v0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_9

    .line 296
    .end local v11    # "sslCtx":J
    .end local v13    # "certBio":J
    .end local v15    # "keyBio":J
    .end local v17    # "cert":J
    .end local v19    # "key":J
    .restart local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v6    # "supportsKeyManagerFactory":Z
    .restart local v8    # "useKeyManagerFactory":Z
    .restart local v9    # "tlsv13Supported":Z
    .restart local v24    # "cause":Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    goto :goto_14

    .end local v24    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    move-object/from16 v24, v2

    move/from16 v21, v6

    .line 297
    .end local v2    # "cause":Ljava/lang/Throwable;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v24    # "cause":Ljava/lang/Throwable;
    :goto_14
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    const-string v2, "Failed to get the list of available OpenSSL cipher suites."

    invoke-interface {v1, v2, v0}, Lio/netty/util/internal/logging/InternalLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_15
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 300
    new-instance v1, Ljava/util/LinkedHashSet;

    .line 301
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v5, 0x2

    mul-int/2addr v2, v5

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 302
    .local v1, "availableJavaCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 304
    .local v2, "cipher":Ljava/lang/String;
    invoke-static {v2}, Lio/netty/handler/ssl/SslUtils;->isTLSv13Cipher(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 305
    const-string v7, "TLS"

    invoke-static {v2, v7}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    const-string v7, "SSL"

    invoke-static {v2, v7}, Lio/netty/handler/ssl/CipherSuiteConverter;->toJava(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 309
    :cond_15
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v2    # "cipher":Ljava/lang/String;
    :goto_17
    goto :goto_16

    .line 313
    :cond_16
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->DEFAULT_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 314
    sget-object v0, Lio/netty/handler/ssl/SslUtils;->TLSV13_CIPHER_SUITES:[Ljava/lang/String;

    invoke-static {v1, v3, v0}, Lio/netty/handler/ssl/SslUtils;->addIfSupported(Ljava/util/Set;Ljava/util/List;[Ljava/lang/String;)V

    .line 316
    invoke-static {v3, v1}, Lio/netty/handler/ssl/SslUtils;->useFallbackCiphersIfDefaultIsEmpty(Ljava/util/List;Ljava/lang/Iterable;)V

    .line 317
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 319
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    sput-object v2, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    .line 321
    new-instance v7, Ljava/util/LinkedHashSet;

    sget-object v10, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 322
    invoke-interface {v10}, Ljava/util/Set;->size()I

    move-result v11

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v12

    add-int/2addr v11, v12

    invoke-direct {v7, v11}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 323
    .local v7, "availableCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v7, v10}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 324
    invoke-interface {v7, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 326
    sput-object v7, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    .line 327
    sput-boolean v6, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    .line 328
    sput-boolean v8, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    .line 330
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v10, 0x6

    invoke-direct {v2, v10}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 332
    .local v2, "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v10, "SSLv2Hello"

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 333
    sget v10, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv2:I

    const/4 v11, 0x1

    invoke-static {v11, v10}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 334
    const-string v10, "SSLv2"

    invoke-interface {v2, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    :cond_17
    sget v10, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_SSLv3:I

    invoke-static {v5, v10}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 337
    const-string v5, "SSLv3"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_18
    const/4 v5, 0x4

    sget v10, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1:I

    invoke-static {v5, v10}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 340
    const-string v5, "TLSv1"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_19
    const/16 v5, 0x8

    sget v10, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_1:I

    invoke-static {v5, v10}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 343
    const-string v5, "TLSv1.1"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_1a
    const/16 v5, 0x10

    sget v10, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_2:I

    invoke-static {v5, v10}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 346
    const-string v5, "TLSv1.2"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1b
    if-eqz v9, :cond_1c

    const/16 v5, 0x20

    sget v10, Lio/netty/internal/tcnative/SSL;->SSL_OP_NO_TLSv1_3:I

    invoke-static {v5, v10}, Lio/netty/handler/ssl/OpenSsl;->doesSupportProtocol(II)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 351
    const-string v5, "TLSv1.3"

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    const/4 v5, 0x1

    sput-boolean v5, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    goto :goto_18

    .line 354
    :cond_1c
    const/4 v5, 0x0

    sput-boolean v5, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    .line 357
    :goto_18
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v5

    sput-object v5, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    .line 358
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->doesSupportOcsp()Z

    move-result v10

    sput-boolean v10, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    .line 360
    sget-object v10, Lio/netty/handler/ssl/OpenSsl;->logger:Lio/netty/util/internal/logging/InternalLogger;

    invoke-interface {v10}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_1d

    .line 361
    const-string v11, "Supported protocols (OpenSSL): {} "

    invoke-interface {v10, v11, v5}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 362
    const-string v5, "Default cipher suites (OpenSSL): {}"

    invoke-interface {v10, v5, v0}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    .end local v1    # "availableJavaCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2    # "protocols":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "defaultCiphers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "availableOpenSslCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "supportsKeyManagerFactory":Z
    .end local v7    # "availableCipherSuites":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v8    # "useKeyManagerFactory":Z
    .end local v9    # "tlsv13Supported":Z
    :cond_1d
    goto :goto_19

    .line 365
    .end local v24    # "cause":Ljava/lang/Throwable;
    .local v2, "cause":Ljava/lang/Throwable;
    :cond_1e
    move-object/from16 v24, v2

    .end local v2    # "cause":Ljava/lang/Throwable;
    .restart local v24    # "cause":Ljava/lang/Throwable;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->DEFAULT_CIPHERS:Ljava/util/List;

    .line 366
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    .line 367
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    .line 368
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_CIPHER_SUITES:Ljava/util/Set;

    .line 369
    const/4 v1, 0x0

    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    .line 370
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    .line 371
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTED_PROTOCOLS_SET:Ljava/util/Set;

    .line 372
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    .line 373
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    .line 374
    sput-boolean v1, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    .line 376
    .end local v24    # "cause":Ljava/lang/Throwable;
    :goto_19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 552
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static availableCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 494
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->availableOpenSslCipherSuites()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static availableJavaCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 510
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_JAVA_CIPHER_SUITES:Ljava/util/Set;

    return-object v0
.end method

.method public static availableOpenSslCipherSuites()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    return-object v0
.end method

.method private static doesSupportOcsp()Z
    .locals 7

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "supportsOcsp":Z
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x10002000

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    .line 390
    const-wide/16 v1, -0x1

    .line 392
    .local v1, "sslCtx":J
    const/16 v3, 0x10

    const/4 v4, 0x1

    const-wide/16 v5, -0x1

    :try_start_0
    invoke-static {v3, v4}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v3

    move-wide v1, v3

    .line 393
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lio/netty/internal/tcnative/SSLContext;->enableOcsp(JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 394
    const/4 v0, 0x1

    .line 398
    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    .line 399
    :goto_0
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v3

    cmp-long v4, v1, v5

    if-eqz v4, :cond_0

    .line 399
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 401
    :cond_0
    throw v3

    .line 395
    :catch_0
    move-exception v3

    .line 398
    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    .line 399
    goto :goto_0

    .line 403
    .end local v1    # "sslCtx":J
    :cond_1
    :goto_1
    return v0
.end method

.method private static doesSupportProtocol(II)Z
    .locals 8
    .param p0, "protocol"    # I
    .param p1, "opt"    # I

    .line 406
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 408
    return v0

    .line 410
    :cond_0
    const-wide/16 v1, -0x1

    .line 412
    .local v1, "sslCtx":J
    const/4 v3, 0x2

    const-wide/16 v4, -0x1

    :try_start_0
    invoke-static {p0, v3}, Lio/netty/internal/tcnative/SSLContext;->make(II)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v6

    .line 413
    .end local v1    # "sslCtx":J
    .local v0, "sslCtx":J
    const/4 v2, 0x1

    .line 417
    cmp-long v3, v0, v4

    if-eqz v3, :cond_1

    .line 418
    invoke-static {v0, v1}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 413
    :cond_1
    return v2

    .line 417
    .end local v0    # "sslCtx":J
    .restart local v1    # "sslCtx":J
    :catchall_0
    move-exception v0

    cmp-long v3, v1, v4

    if-eqz v3, :cond_2

    .line 418
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 420
    :cond_2
    throw v0

    .line 414
    :catch_0
    move-exception v3

    .line 415
    .local v3, "ignore":Ljava/lang/Exception;
    nop

    .line 417
    cmp-long v4, v1, v4

    if-eqz v4, :cond_3

    .line 418
    invoke-static {v1, v2}, Lio/netty/internal/tcnative/SSLContext;->free(J)I

    .line 415
    :cond_3
    return v0
.end method

.method public static ensureAvailability()V
    .locals 3

    .line 473
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 477
    return-void

    .line 474
    :cond_0
    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    const-string v2, "failed to load the required native library"

    invoke-direct {v1, v2}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v1, v0}, Ljava/lang/UnsatisfiedLinkError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Error;

    throw v0
.end method

.method private static initializeTcNative(Ljava/lang/String;)Z
    .locals 1
    .param p0, "engine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 586
    const-string v0, "provided"

    invoke-static {v0, p0}, Lio/netty/internal/tcnative/Library;->initialize(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAlpnSupported()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 440
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->version()I

    move-result v0

    int-to-long v0, v0

    const-wide/32 v2, 0x10002000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAvailable()Z
    .locals 1

    .line 429
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isBoringSSL()Z
    .locals 1

    .line 600
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    return v0
.end method

.method public static isCipherSuiteAvailable(Ljava/lang/String;)Z
    .locals 2
    .param p0, "cipherSuite"    # Ljava/lang/String;

    .line 518
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->IS_BORINGSSL:Z

    invoke-static {p0, v0}, Lio/netty/handler/ssl/CipherSuiteConverter;->toOpenSsl(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "converted":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 520
    move-object p0, v0

    .line 522
    :cond_0
    sget-object v1, Lio/netty/handler/ssl/OpenSsl;->AVAILABLE_OPENSSL_CIPHER_SUITES:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isOcspSupported()Z
    .locals 1

    .line 447
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_OCSP:Z

    return v0
.end method

.method static isTlsv13Supported()Z
    .locals 1

    .line 596
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->TLSV13_SUPPORTED:Z

    return v0
.end method

.method private static loadTcNative()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 555
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedOs()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "os":Ljava/lang/String;
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedArch()Ljava/lang/String;

    move-result-object v1

    .line 558
    .local v1, "arch":Ljava/lang/String;
    new-instance v2, Ljava/util/LinkedHashSet;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 559
    .local v2, "libNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "netty_tcnative"

    .line 563
    .local v3, "staticLibName":Ljava/lang/String;
    const-string v4, "linux"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x5f

    const-string v6, "_"

    if-eqz v4, :cond_1

    .line 564
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->normalizedLinuxClassifiers()Ljava/util/Set;

    move-result-object v4

    .line 565
    .local v4, "classifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 566
    .local v8, "classifier":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 567
    .end local v8    # "classifier":Ljava/lang/String;
    goto :goto_0

    .line 569
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_fedora"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v4    # "classifiers":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_1

    .line 576
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 578
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 581
    const-class v4, Lio/netty/internal/tcnative/SSL;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    .line 582
    invoke-interface {v2, v5}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 581
    invoke-static {v4, v5}, Lio/netty/util/internal/NativeLibraryLoader;->loadFirstAvailable(Ljava/lang/ClassLoader;[Ljava/lang/String;)V

    .line 583
    return-void
.end method

.method static memoryAddress(Lio/netty/buffer/ByteBuf;)J
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 548
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 549
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lio/netty/internal/tcnative/Buffer;->address(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 548
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static releaseIfNeeded(Lio/netty/util/ReferenceCounted;)V
    .locals 1
    .param p0, "counted"    # Lio/netty/util/ReferenceCounted;

    .line 590
    invoke-interface {p0}, Lio/netty/util/ReferenceCounted;->refCnt()I

    move-result v0

    if-lez v0, :cond_0

    .line 591
    invoke-static {p0}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 593
    :cond_0
    return-void
.end method

.method static selfSignedCertificate()Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 382
    sget-object v0, Lio/netty/handler/ssl/SslContext;->X509_CERT_FACTORY:Ljava/security/cert/CertificateFactory;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    sget-object v2, Lio/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    .line 383
    const-string v3, "-----BEGIN CERTIFICATE-----\nMIICrjCCAZagAwIBAgIIdSvQPv1QAZQwDQYJKoZIhvcNAQELBQAwFjEUMBIGA1UEAxMLZXhhbXBs\nZS5jb20wIBcNMTgwNDA2MjIwNjU5WhgPOTk5OTEyMzEyMzU5NTlaMBYxFDASBgNVBAMTC2V4YW1w\nbGUuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAggbWsmDQ6zNzRZ5AW8E3eoGl\nqWvOBDb5Fs1oBRrVQHuYmVAoaqwDzXYJ0LOwa293AgWEQ1jpcbZ2hpoYQzqEZBTLnFhMrhRFlH6K\nbJND8Y33kZ/iSVBBDuGbdSbJShlM+4WwQ9IAso4MZ4vW3S1iv5fGGpLgbtXRmBf/RU8omN0Gijlv\nWlLWHWijLN8xQtySFuBQ7ssW8RcKAary3pUm6UUQB+Co6lnfti0Tzag8PgjhAJq2Z3wbsGRnP2YS\nvYoaK6qzmHXRYlp/PxrjBAZAmkLJs4YTm/XFF+fkeYx4i9zqHbyone5yerRibsHaXZWLnUL+rFoe\nMdKvr0VS3sGmhQIDAQABMA0GCSqGSIb3DQEBCwUAA4IBAQADQi441pKmXf9FvUV5EHU4v8nJT9Iq\nyqwsKwXnr7AsUlDGHBD7jGrjAXnG5rGxuNKBQ35wRxJATKrUtyaquFUL6H8O6aGQehiFTk6zmPbe\n12Gu44vqqTgIUxnv3JQJiox8S2hMxsSddpeCmSdvmalvD6WG4NthH6B9ZaBEiep1+0s0RUaBYn73\nI7CCUaAtbjfR6pcJjrFk5ei7uwdQZFSJtkP2z8r7zfeANJddAKFlkaMWn7u+OIVuB4XPooWicObk\nNAHFtP65bocUYnDpTVdiyvn8DdqyZ/EO8n1bBKBzuSLplk2msW4pdgaFgY7Vw/0wzcFXfUXmL1uy\nG8sQD/wx\n-----END CERTIFICATE-----"

    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 382
    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public static supportsHostnameValidation()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static supportsKeyManagerFactory()Z
    .locals 1

    .line 529
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->SUPPORTS_KEYMANAGER_FACTORY:Z

    return v0
.end method

.method public static unavailabilityCause()Ljava/lang/Throwable;
    .locals 1

    .line 486
    sget-object v0, Lio/netty/handler/ssl/OpenSsl;->UNAVAILABILITY_CAUSE:Ljava/lang/Throwable;

    return-object v0
.end method

.method static useKeyManagerFactory()Z
    .locals 1

    .line 544
    sget-boolean v0, Lio/netty/handler/ssl/OpenSsl;->USE_KEYMANAGER_FACTORY:Z

    return v0
.end method

.method public static version()I
    .locals 1

    .line 455
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->version()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public static versionString()Ljava/lang/String;
    .locals 1

    .line 463
    invoke-static {}, Lio/netty/handler/ssl/OpenSsl;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lio/netty/internal/tcnative/SSL;->versionString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
