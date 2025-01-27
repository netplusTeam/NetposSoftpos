.class public final Lorg/apache/sshd/common/config/ConfigFileReaderSupport;
.super Ljava/lang/Object;
.source "ConfigFileReaderSupport.java"


# static fields
.field public static final AUTH_KEYS_FILE_CONFIG_PROP:Ljava/lang/String; = "AuthorizedKeysFile"

.field public static final CIPHERS_CONFIG_PROP:Ljava/lang/String; = "Ciphers"

.field public static final COMMENT_CHAR:C = '#'

.field public static final COMPRESSION_PROP:Ljava/lang/String; = "Compression"

.field public static final DEFAULT_BIND_ADDRESS:Ljava/lang/String; = "0.0.0.0"

.field public static final DEFAULT_CIPHERS:Ljava/lang/String; = "aes128-ctr,aes192-ctr,aes256-ctr,arcfour256,arcfour128,aes128-cbc,3des-cbc,blowfish-cbc,cast128-cbc,aes192-cbc,aes256-cbc,arcfour"

.field public static final DEFAULT_COMPRESSION:Ljava/lang/String;

.field public static final DEFAULT_HOST_KEY_ALGORITHMS:Ljava/lang/String; = "ssh-rsa,ssh-dss"

.field public static final DEFAULT_KBD_INTERACTIVE_AUTH:Ljava/lang/String; = "yes"

.field public static final DEFAULT_KBD_INTERACTIVE_AUTH_VALUE:Z

.field public static final DEFAULT_KEEP_ALIVE:Z = true

.field public static final DEFAULT_KEX_ALGORITHMS:Ljava/lang/String; = "ecdh-sha2-nistp256,ecdh-sha2-nistp384,ecdh-sha2-nistp521,diffie-hellman-group-exchange-sha256,diffie-hellman-group-exchange-sha1,diffie-hellman-group18-sha512,diffie-hellman-group17-sha512,diffie-hellman-group16-sha512,diffie-hellman-group15-sha512,diffie-hellman-group14-sha256,diffie-hellman-group14-sha1,diffie-hellman-group1-sha1"

.field public static final DEFAULT_LOGIN_GRACE_TIME:J

.field public static final DEFAULT_LOG_LEVEL:Lorg/apache/sshd/common/config/LogLevelValue;

.field public static final DEFAULT_MACS:Ljava/lang/String; = "hmac-md5,hmac-sha1,umac-64@openssh.com,hmac-ripemd160,hmac-sha1-96,hmac-md5-96,hmac-sha2-256,hmac-sha2-256-96,hmac-sha2-512,hmac-sha2-512-96"

.field public static final DEFAULT_MAX_AUTH_TRIES:I = 0x6

.field public static final DEFAULT_MAX_SESSIONS:I = 0xa

.field public static final DEFAULT_MAX_STARTUPS:I = 0xa

.field public static final DEFAULT_PASSWORD_AUTH:Ljava/lang/String; = "yes"

.field public static final DEFAULT_PASSWORD_AUTH_VALUE:Z

.field public static final DEFAULT_PREFERRED_AUTHS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_PREFERRED_AUTHS_VALUE:Ljava/lang/String;

.field public static final DEFAULT_PUBKEY_AUTH:Ljava/lang/String; = "yes"

.field public static final DEFAULT_PUBKEY_AUTH_VALUE:Z

.field public static final DEFAULT_REKEY_TIME_LIMIT:J

.field public static final DEFAULT_SYSLOG_FACILITY:Lorg/apache/sshd/common/config/SyslogFacilityValue;

.field public static final DEFAULT_USE_DNS:Z = true

.field public static final HOST_KEY_ALGORITHMS_CONFIG_PROP:Ljava/lang/String; = "HostKeyAlgorithms"

.field public static final KBD_INTERACTIVE_CONFIG_PROP:Ljava/lang/String; = "KbdInteractiveAuthentication"

.field public static final KEEP_ALIVE_CONFIG_PROP:Ljava/lang/String; = "TCPKeepAlive"

.field public static final KEX_ALGORITHMS_CONFIG_PROP:Ljava/lang/String; = "KexAlgorithms"

.field public static final KEY_REGENERATE_INTERVAL_CONFIG_PROP:Ljava/lang/String; = "KeyRegenerationInterval"

.field public static final LISTEN_ADDRESS_CONFIG_PROP:Ljava/lang/String; = "ListenAddress"

.field public static final LOGIN_GRACE_TIME_CONFIG_PROP:Ljava/lang/String; = "LoginGraceTime"

.field public static final LOG_LEVEL_CONFIG_PROP:Ljava/lang/String; = "LogLevel"

.field public static final MACS_CONFIG_PROP:Ljava/lang/String; = "MACs"

.field public static final MAX_AUTH_TRIES_CONFIG_PROP:Ljava/lang/String; = "MaxAuthTries"

.field public static final MAX_SESSIONS_CONFIG_PROP:Ljava/lang/String; = "MaxSessions"

.field public static final MAX_STARTUPS_CONFIG_PROP:Ljava/lang/String; = "MaxStartups"

.field public static final PASSWORD_AUTH_CONFIG_PROP:Ljava/lang/String; = "PasswordAuthentication"

.field public static final PORT_CONFIG_PROP:Ljava/lang/String; = "Port"

.field public static final PREFERRED_AUTHS_CONFIG_PROP:Ljava/lang/String; = "PreferredAuthentications"

.field public static final PUBKEY_AUTH_CONFIG_PROP:Ljava/lang/String; = "PubkeyAuthentication"

.field public static final SUBSYSTEM_CONFIG_PROP:Ljava/lang/String; = "Subsystem"

.field public static final SYSLOG_FACILITY_CONFIG_PROP:Ljava/lang/String; = "SyslogFacility"

.field public static final USE_DNS_CONFIG_PROP:Ljava/lang/String; = "UseDNS"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 56
    sget-object v0, Lorg/apache/sshd/common/config/CompressionConfigValue;->NO:Lorg/apache/sshd/common/config/CompressionConfigValue;

    invoke-virtual {v0}, Lorg/apache/sshd/common/config/CompressionConfigValue;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_COMPRESSION:Ljava/lang/String;

    .line 62
    const-string/jumbo v0, "yes"

    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_PUBKEY_AUTH_VALUE:Z

    .line 66
    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_PASSWORD_AUTH_VALUE:Z

    .line 70
    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->parseBooleanValue(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_KBD_INTERACTIVE_AUTH_VALUE:Z

    .line 73
    const-string v0, "publickey"

    const-string v1, "keyboard-interactive"

    const-string v2, "password"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_PREFERRED_AUTHS:Ljava/util/List;

    .line 79
    nop

    .line 80
    const/16 v1, 0x2c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_PREFERRED_AUTHS_VALUE:Ljava/lang/String;

    .line 96
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x78

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_LOGIN_GRACE_TIME:J

    .line 98
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_REKEY_TIME_LIMIT:J

    .line 127
    sget-object v0, Lorg/apache/sshd/common/config/LogLevelValue;->INFO:Lorg/apache/sshd/common/config/LogLevelValue;

    sput-object v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_LOG_LEVEL:Lorg/apache/sshd/common/config/LogLevelValue;

    .line 130
    sget-object v0, Lorg/apache/sshd/common/config/SyslogFacilityValue;->AUTH:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    sput-object v0, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->DEFAULT_SYSLOG_FACILITY:Lorg/apache/sshd/common/config/SyslogFacilityValue;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseBooleanValue(Ljava/lang/String;)Z
    .locals 1
    .param p0, "v"    # Ljava/lang/String;

    .line 226
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/PropertyResolverUtils;->TRUE_VALUES:Ljava/util/NavigableSet;

    invoke-interface {v0, p0}, Ljava/util/NavigableSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static readConfigFile(Ljava/io/BufferedReader;)Ljava/util/Properties;
    .locals 9
    .param p0, "rdr"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 174
    .local v0, "props":Ljava/util/Properties;
    const/4 v1, 0x1

    .line 175
    .local v1, "lineNumber":I
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_6

    .line 176
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 177
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    goto :goto_1

    .line 181
    :cond_0
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 182
    .local v3, "pos":I
    if-nez v3, :cond_1

    .line 183
    goto :goto_1

    .line 186
    :cond_1
    const/4 v4, 0x0

    if-lez v3, :cond_2

    .line 187
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 195
    :cond_2
    const/16 v5, 0x20

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 196
    if-gez v3, :cond_3

    .line 197
    const/16 v5, 0x3d

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 200
    :cond_3
    if-ltz v3, :cond_5

    .line 204
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 205
    .local v4, "key":Ljava/lang/String;
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 208
    .local v6, "prev":Ljava/lang/String;
    invoke-static {v6}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 209
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 212
    :cond_4
    invoke-virtual {v0, v4, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 175
    .end local v3    # "pos":I
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    .end local v6    # "prev":Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .restart local v3    # "pos":I
    :cond_5
    new-instance v4, Ljava/io/StreamCorruptedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No delimiter at line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 215
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "pos":I
    :cond_6
    return-object v0
.end method

.method public static readConfigFile(Ljava/io/InputStream;Z)Ljava/util/Properties;
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/io/InputStreamReader;

    .line 151
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;->resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 150
    .local v0, "reader":Ljava/io/Reader;
    nop

    .line 152
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->readConfigFile(Ljava/io/Reader;Z)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 152
    return-object v1

    .line 150
    :catchall_0
    move-exception v1

    .end local v0    # "reader":Ljava/io/Reader;
    .end local p0    # "input":Ljava/io/InputStream;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    .restart local v0    # "reader":Ljava/io/Reader;
    .restart local p0    # "input":Ljava/io/InputStream;
    .restart local p1    # "okToClose":Z
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readConfigFile(Ljava/io/Reader;Z)Ljava/util/Properties;
    .locals 4
    .param p0, "reader"    # Ljava/io/Reader;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    new-instance v0, Ljava/io/BufferedReader;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseReader;->resolveReader(Ljava/io/Reader;Z)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 158
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->readConfigFile(Ljava/io/BufferedReader;)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 158
    return-object v1

    .line 157
    :catchall_0
    move-exception v1

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local p0    # "reader":Ljava/io/Reader;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 159
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local p0    # "reader":Ljava/io/Reader;
    .restart local p1    # "okToClose":Z
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method public static readConfigFile(Ljava/net/URL;)Ljava/util/Properties;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 144
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 145
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->readConfigFile(Ljava/io/InputStream;Z)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 145
    :cond_0
    return-object v1

    .line 144
    :catchall_0
    move-exception v1

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "url":Ljava/net/URL;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 146
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static varargs readConfigFile(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/Properties;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 139
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/common/config/ConfigFileReaderSupport;->readConfigFile(Ljava/io/InputStream;Z)Ljava/util/Properties;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 139
    :cond_0
    return-object v1

    .line 138
    :catchall_0
    move-exception v1

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    .restart local v0    # "input":Ljava/io/InputStream;
    .restart local p0    # "path":Ljava/nio/file/Path;
    .restart local p1    # "options":[Ljava/nio/file/OpenOption;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method public static yesNoValueOf(Z)Ljava/lang/String;
    .locals 1
    .param p0, "flag"    # Z

    .line 241
    if-eqz p0, :cond_0

    const-string/jumbo v0, "yes"

    goto :goto_0

    :cond_0
    const-string v0, "no"

    :goto_0
    return-object v0
.end method
