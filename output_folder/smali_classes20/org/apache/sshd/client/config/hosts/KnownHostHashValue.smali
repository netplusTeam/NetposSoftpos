.class public Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
.super Ljava/lang/Object;
.source "KnownHostHashValue.java"


# static fields
.field public static final DEFAULT_DIGEST:Lorg/apache/sshd/common/NamedFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;"
        }
    .end annotation
.end field

.field public static final HASHED_HOST_DELIMITER:C = '|'


# instance fields
.field private digestValue:[B

.field private digester:Lorg/apache/sshd/common/NamedFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private saltValue:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->SHA1:Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    sput-object v0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->DEFAULT_DIGEST:Lorg/apache/sshd/common/NamedFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->DEFAULT_DIGEST:Lorg/apache/sshd/common/NamedFactory;

    iput-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->digester:Lorg/apache/sshd/common/NamedFactory;

    .line 56
    return-void
.end method

.method public static append(Ljava/lang/Appendable;Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;)Ljava/lang/Appendable;
    .locals 3
    .param p1, "hashValue"    # Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;",
            ")TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    if-nez p1, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigester()Lorg/apache/sshd/common/NamedFactory;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getSaltValue()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigestValue()[B

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->append(Ljava/lang/Appendable;Lorg/apache/sshd/common/NamedResource;[B[B)Ljava/lang/Appendable;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static append(Ljava/lang/Appendable;Lorg/apache/sshd/common/NamedResource;[B[B)Ljava/lang/Appendable;
    .locals 4
    .param p1, "factory"    # Lorg/apache/sshd/common/NamedResource;
    .param p2, "salt"    # [B
    .param p3, "digest"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Lorg/apache/sshd/common/NamedResource;",
            "[B[B)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v0

    .line 170
    .local v0, "encoder":Ljava/util/Base64$Encoder;
    const/16 v1, 0x7c

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v2

    invoke-interface {p1}, Lorg/apache/sshd/common/NamedResource;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 171
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v2

    invoke-virtual {v0, p2}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 172
    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object v1

    invoke-virtual {v0, p3}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 173
    return-object p0
.end method

.method public static appendHostPattern(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;
    .locals 2
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/Appendable;",
            ">(TA;",
            "Ljava/lang/String;",
            "I)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    .local p0, "sb":Ljava/lang/Appendable;, "TA;"
    if-lez p2, :cond_0

    const/16 v0, 0x16

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 152
    .local v0, "nonDefaultPort":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 153
    const/16 v1, 0x5b

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 155
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 156
    if-eqz v0, :cond_2

    .line 157
    const/16 v1, 0x5d

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 158
    const/16 v1, 0x3a

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 161
    :cond_2
    return-object p0
.end method

.method public static calculateHashValue(Ljava/lang/String;ILorg/apache/sshd/common/Factory;[B)[B
    .locals 1
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p3, "salt"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lorg/apache/sshd/common/Factory<",
            "+",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    .local p2, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<+Lorg/apache/sshd/common/mac/Mac;>;"
    invoke-interface {p2}, Lorg/apache/sshd/common/Factory;->create()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/mac/Mac;

    invoke-static {p0, p1, v0, p3}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->calculateHashValue(Ljava/lang/String;ILorg/apache/sshd/common/mac/Mac;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static calculateHashValue(Ljava/lang/String;ILorg/apache/sshd/common/mac/Mac;[B)[B
    .locals 3
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I
    .param p2, "mac"    # Lorg/apache/sshd/common/mac/Mac;
    .param p3, "salt"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    invoke-interface {p2, p3}, Lorg/apache/sshd/common/mac/Mac;->init([B)V

    .line 131
    invoke-static {p0, p1}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->createHostPattern(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "hostPattern":Ljava/lang/String;
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 133
    .local v1, "hostBytes":[B
    invoke-interface {p2, v1}, Lorg/apache/sshd/common/mac/Mac;->update([B)V

    .line 134
    invoke-interface {p2}, Lorg/apache/sshd/common/mac/Mac;->doFinal()[B

    move-result-object v2

    return-object v2
.end method

.method public static createHostPattern(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "host"    # Ljava/lang/String;
    .param p1, "port"    # I

    .line 138
    if-lez p1, :cond_1

    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0, p1}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->appendHostPattern(Ljava/lang/Appendable;Ljava/lang/String;I)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failure to generate host pattern of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
    .locals 2
    .param p0, "patternString"    # Ljava/lang/String;

    .line 177
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    invoke-direct {v1}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;-><init>()V

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->parse(Ljava/lang/String;Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;)Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    move-result-object v1

    return-object v1
.end method

.method public static parse(Ljava/lang/String;Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;)Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
    .locals 6
    .param p0, "patternString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;",
            ">(",
            "Ljava/lang/String;",
            "TV;)TV;"
        }
    .end annotation

    .line 182
    .local p1, "value":Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;, "TV;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "pattern":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    return-object p1

    .line 187
    :cond_0
    const/16 v1, 0x7c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "components":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const-string v3, "Invalid hash pattern (insufficient data): %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 189
    aget-object v2, v1, v5

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "Invalid hash pattern (unexpected extra data): %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 191
    aget-object v2, v1, v4

    .line 192
    invoke-static {v2}, Lorg/apache/sshd/client/config/hosts/KnownHostDigest;->fromName(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostDigest;

    move-result-object v2

    const-string v3, "Invalid hash pattern (unknown digest): %s"

    invoke-static {v2, v3, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/NamedFactory;

    .line 194
    .local v2, "factory":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;"
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v3

    .line 195
    .local v3, "decoder":Ljava/util/Base64$Decoder;
    invoke-virtual {p1, v2}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->setDigester(Lorg/apache/sshd/common/NamedFactory;)V

    .line 196
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->setSaltValue([B)V

    .line 197
    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->setDigestValue([B)V

    .line 198
    return-object p1
.end method


# virtual methods
.method public getDigestValue()[B
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->digestValue:[B

    return-object v0
.end method

.method public getDigester()Lorg/apache/sshd/common/NamedFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->digester:Lorg/apache/sshd/common/NamedFactory;

    return-object v0
.end method

.method public getSaltValue()[B
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->saltValue:[B

    return-object v0
.end method

.method public isHostMatch(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 91
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    return v0

    .line 96
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigestValue()[B

    move-result-object v0

    .line 97
    .local v0, "expected":[B
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigester()Lorg/apache/sshd/common/NamedFactory;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getSaltValue()[B

    move-result-object v2

    invoke-static {p1, p2, v1, v2}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->calculateHashValue(Ljava/lang/String;ILorg/apache/sshd/common/Factory;[B)[B

    move-result-object v1

    .line 98
    .local v1, "actual":[B
    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 99
    .end local v0    # "expected":[B
    .end local v1    # "actual":[B
    :catchall_0
    move-exception v0

    .line 100
    .local v0, "t":Ljava/lang/Throwable;
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 101
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 103
    :cond_1
    new-instance v1, Lorg/apache/sshd/common/RuntimeSshException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to calculate hash value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDigestValue([B)V
    .locals 0
    .param p1, "digestValue"    # [B

    .line 79
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->digestValue:[B

    .line 80
    return-void
.end method

.method public setDigester(Lorg/apache/sshd/common/NamedFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedFactory<",
            "Lorg/apache/sshd/common/mac/Mac;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p1, "digester":Lorg/apache/sshd/common/NamedFactory;, "Lorg/apache/sshd/common/NamedFactory<Lorg/apache/sshd/common/mac/Mac;>;"
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->digester:Lorg/apache/sshd/common/NamedFactory;

    .line 64
    return-void
.end method

.method public setSaltValue([B)V
    .locals 0
    .param p1, "saltValue"    # [B

    .line 71
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->saltValue:[B

    .line 72
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 110
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigester()Lorg/apache/sshd/common/NamedFactory;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getSaltValue()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigestValue()[B

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 117
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {v0, p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->append(Ljava/lang/Appendable;Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;)Ljava/lang/Appendable;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigester()Lorg/apache/sshd/common/NamedFactory;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getSaltValue()[B

    move-result-object v2

    const/16 v3, 0x3a

    invoke-static {v3, v2}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->getDigestValue()[B

    move-result-object v1

    invoke-static {v3, v1}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex(C[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
