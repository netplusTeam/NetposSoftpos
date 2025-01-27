.class public final Lorg/apache/sshd/common/kex/DHGroupData;
.super Ljava/lang/Object;
.source "DHGroupData.java"


# static fields
.field private static final OAKLEY_GROUPS:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$HRBXJZTrs9lk4mERf6uxNx3dM_M(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$JlEcQD6Q7WNeflL-YBjJ7q4pVw0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/kex/DHGroupData;->OAKLEY_GROUPS:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getG()[B
    .locals 3

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static getOakleyGroupPrimeValue(Ljava/lang/String;)[B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 139
    sget-object v0, Lorg/apache/sshd/common/kex/DHGroupData;->OAKLEY_GROUPS:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 140
    .local v0, "value":[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :goto_0
    return-object v1
.end method

.method public static getP1()[B
    .locals 1

    .line 59
    const/16 v0, 0x81

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1at
        0x53t
        -0x7ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static getP14()[B
    .locals 1

    .line 81
    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 1
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x37t
        0xft
        -0x26t
        -0x5et
        0x21t
        0x68t
        -0x3et
        0x34t
        -0x3ct
        -0x3at
        0x62t
        -0x75t
        -0x80t
        -0x24t
        0x1ct
        -0x2ft
        0x29t
        0x2t
        0x4et
        0x8t
        -0x76t
        0x67t
        -0x34t
        0x74t
        0x2t
        0xbt
        -0x42t
        -0x5at
        0x3bt
        0x13t
        -0x65t
        0x22t
        0x51t
        0x4at
        0x8t
        0x79t
        -0x72t
        0x34t
        0x4t
        -0x23t
        -0x11t
        -0x6bt
        0x19t
        -0x4dt
        -0x33t
        0x3at
        0x43t
        0x1bt
        0x30t
        0x2bt
        0xat
        0x6dt
        -0xet
        0x5ft
        0x14t
        0x37t
        0x4ft
        -0x1ft
        0x35t
        0x6dt
        0x6dt
        0x51t
        -0x3et
        0x45t
        -0x1ct
        -0x7bt
        -0x4bt
        0x76t
        0x62t
        0x5et
        0x7et
        -0x3at
        -0xct
        0x4ct
        0x42t
        -0x17t
        -0x5at
        0x37t
        -0x13t
        0x6bt
        0xbt
        -0x1t
        0x5ct
        -0x4at
        -0xct
        0x6t
        -0x49t
        -0x13t
        -0x12t
        0x38t
        0x6bt
        -0x5t
        0x5at
        -0x77t
        -0x61t
        -0x5bt
        -0x52t
        -0x61t
        0x24t
        0x11t
        0x7ct
        0x4bt
        0x1ft
        -0x1at
        0x49t
        0x28t
        0x66t
        0x51t
        -0x14t
        -0x1ct
        0x5bt
        0x3dt
        -0x3et
        0x0t
        0x7ct
        -0x48t
        -0x5ft
        0x63t
        -0x41t
        0x5t
        -0x68t
        -0x26t
        0x48t
        0x36t
        0x1ct
        0x55t
        -0x2dt
        -0x66t
        0x69t
        0x16t
        0x3ft
        -0x58t
        -0x3t
        0x24t
        -0x31t
        0x5ft
        -0x7dt
        0x65t
        0x5dt
        0x23t
        -0x24t
        -0x5dt
        -0x53t
        -0x6at
        0x1ct
        0x62t
        -0xdt
        0x56t
        0x20t
        -0x7bt
        0x52t
        -0x45t
        -0x62t
        -0x2bt
        0x29t
        0x7t
        0x70t
        -0x6at
        -0x6at
        0x6dt
        0x67t
        0xct
        0x35t
        0x4et
        0x4at
        -0x44t
        -0x68t
        0x4t
        -0xft
        0x74t
        0x6ct
        0x8t
        -0x36t
        0x18t
        0x21t
        0x7ct
        0x32t
        -0x70t
        0x5et
        0x46t
        0x2et
        0x36t
        -0x32t
        0x3bt
        -0x1dt
        -0x62t
        0x77t
        0x2ct
        0x18t
        0xet
        -0x7at
        0x3t
        -0x65t
        0x27t
        -0x7dt
        -0x5et
        -0x14t
        0x7t
        -0x5et
        -0x71t
        -0x4bt
        -0x3bt
        0x5dt
        -0x10t
        0x6ft
        0x4ct
        0x52t
        -0x37t
        -0x22t
        0x2bt
        -0x35t
        -0xat
        -0x6bt
        0x58t
        0x17t
        0x18t
        0x39t
        -0x6bt
        0x49t
        0x7ct
        -0x16t
        -0x6bt
        0x6at
        -0x1bt
        0x15t
        -0x2et
        0x26t
        0x18t
        -0x68t
        -0x6t
        0x5t
        0x10t
        0x15t
        0x72t
        -0x72t
        0x5at
        -0x76t
        -0x54t
        -0x56t
        0x68t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public static getP15()[B
    .locals 1

    .line 119
    const-string v0, "group15.prime"

    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->getOakleyGroupPrimeValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getP16()[B
    .locals 1

    .line 123
    const-string v0, "group16.prime"

    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->getOakleyGroupPrimeValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getP17()[B
    .locals 1

    .line 127
    const-string v0, "group17.prime"

    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->getOakleyGroupPrimeValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static getP18()[B
    .locals 1

    .line 131
    const-string v0, "group18.prime"

    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->getOakleyGroupPrimeValue(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$readOakleyGroupPrimeValue$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 218
    const-string v0, "\\s"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$readOakleyGroupPrimeValue$1(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 220
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static parseOakleyGroupPrimeValue(Ljava/lang/String;)[B
    .locals 7
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 233
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 234
    .local v0, "len":I
    if-gtz v0, :cond_0

    .line 235
    sget-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v1

    .line 238
    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_2

    .line 242
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [B

    .line 243
    .local v1, "group":[B
    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 244
    const/4 v2, 0x1

    .local v2, "l":I
    const/4 v3, 0x0

    .local v3, "pos":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_1

    .line 245
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 246
    .local v4, "hi":C
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 247
    .local v5, "lo":C
    invoke-static {v4, v5}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->fromHex(CC)B

    move-result v6

    aput-byte v6, v1, v2

    .line 244
    .end local v4    # "hi":C
    .end local v5    # "lo":C
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 250
    .end local v2    # "l":I
    .end local v3    # "pos":I
    :cond_1
    return-object v1

    .line 239
    .end local v1    # "group":[B
    :cond_2
    new-instance v1, Ljava/lang/NumberFormatException;

    const-string v2, "Incomplete HEX value representation"

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readOakleyGroupPrimeValue(Ljava/io/BufferedReader;)[B
    .locals 4
    .param p0, "br"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    :try_start_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->lines()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->readOakleyGroupPrimeValue(Ljava/util/stream/Stream;)[B

    move-result-object v0

    .line 205
    .local v0, "value":[B
    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    return-object v0

    .line 206
    :cond_0
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "No prime value data found"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .end local p0    # "br":Ljava/io/BufferedReader;
    throw v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v0    # "value":[B
    .restart local p0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static readOakleyGroupPrimeValue(Ljava/io/InputStream;)[B
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 166
    .local v0, "rdr":Ljava/io/Reader;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->readOakleyGroupPrimeValue(Ljava/io/Reader;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 166
    return-object v1

    .line 165
    :catchall_0
    move-exception v1

    .end local v0    # "rdr":Ljava/io/Reader;
    .end local p0    # "stream":Ljava/io/InputStream;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 167
    .restart local v0    # "rdr":Ljava/io/Reader;
    .restart local p0    # "stream":Ljava/io/InputStream;
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

.method public static readOakleyGroupPrimeValue(Ljava/io/Reader;)[B
    .locals 4
    .param p0, "r"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 172
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->readOakleyGroupPrimeValue(Ljava/io/BufferedReader;)[B

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 172
    return-object v1

    .line 171
    :catchall_0
    move-exception v1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local p0    # "r":Ljava/io/Reader;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local p0    # "r":Ljava/io/Reader;
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

.method public static readOakleyGroupPrimeValue(Ljava/lang/String;)[B
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOError;
        }
    .end annotation

    .line 153
    :try_start_0
    const-class v0, Lorg/apache/sshd/common/kex/DHGroupData;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v0, "stream":Ljava/io/InputStream;
    if-eqz v0, :cond_1

    .line 158
    :try_start_1
    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->readOakleyGroupPrimeValue(Ljava/io/InputStream;)[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    :cond_0
    return-object v1

    .line 153
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 155
    :cond_1
    :try_start_3
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p0    # "name":Ljava/lang/String;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 153
    :goto_0
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 159
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p0    # "name":Ljava/lang/String;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    :try_start_6
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "name":Ljava/lang/String;
    :cond_2
    :goto_1
    throw v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .end local v0    # "stream":Ljava/io/InputStream;
    .restart local p0    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/IOError;

    invoke-direct {v1, v0}, Ljava/io/IOError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readOakleyGroupPrimeValue(Ljava/util/stream/Stream;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "Ljava/lang/String;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 216
    .local p0, "lines":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda1;-><init>()V

    .line 217
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda2;-><init>()V

    .line 218
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda3;-><init>()V

    .line 219
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/apache/sshd/common/kex/DHGroupData$$ExternalSyntheticLambda4;-><init>()V

    .line 220
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 221
    invoke-static {}, Ljava/util/stream/Collectors;->joining()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    .local v0, "str":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/kex/DHGroupData;->parseOakleyGroupPrimeValue(Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method
