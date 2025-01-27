.class public Lorg/jpos/security/SecureKeyBlockBuilder;
.super Ljava/lang/Object;
.source "SecureKeyBlockBuilder.java"


# static fields
.field protected static final SIZE_HEADER:I = 0x10

.field protected static final SIZE_HEADER_3DES:I = 0x8

.field protected static final SIZE_HEADER_AES:I = 0x10

.field protected static final SIZE_KEYBLOCK_LENGTH:I = 0x4

.field protected static final SIZE_KEYBLOCK_VERSION:I = 0x1

.field protected static final SIZE_KEYUSAGE:I = 0x2

.field protected static final SIZE_KEY_VERSION:I = 0x2

.field protected static final SIZE_NUMOFOPTHDR:I = 0x2

.field protected static final SIZE_OPTHDR_ID:I = 0x2

.field protected static final SIZE_OPTHDR_LENGTH:I = 0x2

.field protected static final SIZE_RESERVED:I = 0x2


# instance fields
.field private final versionsWith8CharacterMAC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Character;

    .line 63
    const/16 v2, 0x41

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 64
    const/16 v2, 0x42

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 65
    const/16 v2, 0x43

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 66
    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 62
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lorg/jpos/security/SecureKeyBlockBuilder;->versionsWith8CharacterMAC:Ljava/util/List;

    .line 74
    return-void
.end method

.method protected static calcOptionalHeaderLength(Ljava/util/Map;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 144
    .local p0, "optHdrs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/jpos/security/SecureKeyBlockBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/jpos/security/SecureKeyBlockBuilder$$ExternalSyntheticLambda0;-><init>()V

    .line 151
    .local v0, "entryLength":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    .line 152
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->sum()I

    move-result v2

    return v2
.end method

.method static synthetic lambda$calcOptionalHeaderLength$0(Ljava/lang/String;)I
    .locals 2
    .param p0, "e"    # Ljava/lang/String;

    .line 145
    const/4 v0, 0x4

    .line 146
    .local v0, "l":I
    if-eqz p0, :cond_0

    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_0
    return v0
.end method

.method public static newBuilder()Lorg/jpos/security/SecureKeyBlockBuilder;
    .locals 1

    .line 77
    new-instance v0, Lorg/jpos/security/SecureKeyBlockBuilder;

    invoke-direct {v0}, Lorg/jpos/security/SecureKeyBlockBuilder;-><init>()V

    return-object v0
.end method

.method protected static parseOptionalHeader(Ljava/io/StringReader;I)Ljava/util/Map;
    .locals 6
    .param p0, "sr"    # Ljava/io/StringReader;
    .param p1, "numOfBlocks"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/StringReader;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 130
    .local v0, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move v1, p1

    .line 134
    .local v1, "cnt":I
    :goto_0
    add-int/lit8 v2, v1, -0x1

    .end local v1    # "cnt":I
    .local v2, "cnt":I
    if-lez v1, :cond_0

    .line 135
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v3

    .line 136
    .local v3, "hbi":Ljava/lang/String;
    invoke-static {p0, v1}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 137
    .local v4, "len":I
    add-int/lit8 v5, v4, -0x2

    sub-int/2addr v5, v1

    invoke-static {p0, v5}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "hdata":Ljava/lang/String;
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0

    .line 140
    .end local v1    # "hdata":Ljava/lang/String;
    .end local v3    # "hbi":Ljava/lang/String;
    .end local v4    # "len":I
    :cond_0
    return-object v0
.end method

.method protected static readChar(Ljava/io/StringReader;)C
    .locals 3
    .param p0, "sr"    # Ljava/io/StringReader;

    .line 122
    :try_start_0
    invoke-virtual {p0}, Ljava/io/StringReader;->read()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char v0, v0

    return v0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Problem witch reading key block character"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static readString(Ljava/io/StringReader;I)Ljava/lang/String;
    .locals 4
    .param p0, "sr"    # Ljava/io/StringReader;
    .param p1, "len"    # I

    .line 111
    new-array v0, p1, [C

    .line 113
    .local v0, "chars":[C
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/StringReader;->read([C)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Problem witch reading key block characters"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public build(Ljava/lang/CharSequence;)Lorg/jpos/security/SecureKeyBlock;
    .locals 11
    .param p1, "data"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 156
    const-string v0, "The key block data cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 157
    new-instance v0, Lorg/jpos/security/SecureKeyBlock;

    invoke-direct {v0}, Lorg/jpos/security/SecureKeyBlock;-><init>()V

    .line 158
    .local v0, "skb":Lorg/jpos/security/SecureKeyBlock;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "keyblock":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_2

    .line 162
    new-instance v2, Ljava/io/StringReader;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 163
    .local v2, "sr":Ljava/io/StringReader;
    invoke-static {v2}, Lorg/jpos/security/SecureKeyBlockBuilder;->readChar(Ljava/io/StringReader;)C

    move-result v4

    iput-char v4, v0, Lorg/jpos/security/SecureKeyBlock;->keyBlockVersion:C

    .line 164
    const/4 v4, 0x4

    invoke-static {v2, v4}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lorg/jpos/security/SecureKeyBlock;->keyBlockLength:I

    .line 165
    const/4 v4, 0x2

    invoke-static {v2, v4}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v5

    .line 166
    .local v5, "ku":Ljava/lang/String;
    invoke-static {v5}, Lorg/jpos/security/ExtKeyUsage;->valueOfByCode(Ljava/lang/String;)Lorg/jpos/security/KeyUsage;

    move-result-object v6

    iput-object v6, v0, Lorg/jpos/security/SecureKeyBlock;->keyUsage:Lorg/jpos/security/KeyUsage;

    .line 167
    invoke-static {v2}, Lorg/jpos/security/SecureKeyBlockBuilder;->readChar(Ljava/io/StringReader;)C

    move-result v6

    invoke-static {v6}, Lorg/jpos/security/Algorithm;->valueOfByCode(C)Lorg/jpos/security/Algorithm;

    move-result-object v6

    iput-object v6, v0, Lorg/jpos/security/SecureKeyBlock;->algorithm:Lorg/jpos/security/Algorithm;

    .line 168
    invoke-static {v2}, Lorg/jpos/security/SecureKeyBlockBuilder;->readChar(Ljava/io/StringReader;)C

    move-result v6

    invoke-static {v6}, Lorg/jpos/security/ModeOfUse;->valueOfByCode(C)Lorg/jpos/security/ModeOfUse;

    move-result-object v6

    iput-object v6, v0, Lorg/jpos/security/SecureKeyBlock;->modeOfUse:Lorg/jpos/security/ModeOfUse;

    .line 169
    invoke-static {v2, v4}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lorg/jpos/security/SecureKeyBlock;->keyVersion:Ljava/lang/String;

    .line 170
    invoke-static {v2}, Lorg/jpos/security/SecureKeyBlockBuilder;->readChar(Ljava/io/StringReader;)C

    move-result v6

    invoke-static {v6}, Lorg/jpos/security/Exportability;->valueOfByCode(C)Lorg/jpos/security/Exportability;

    move-result-object v6

    iput-object v6, v0, Lorg/jpos/security/SecureKeyBlock;->exportability:Lorg/jpos/security/Exportability;

    .line 171
    invoke-static {v2, v4}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 172
    .local v6, "numOfBlocks":I
    invoke-static {v2, v4}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lorg/jpos/security/SecureKeyBlock;->reserved:Ljava/lang/String;

    .line 173
    invoke-static {v2, v6}, Lorg/jpos/security/SecureKeyBlockBuilder;->parseOptionalHeader(Ljava/io/StringReader;I)Ljava/util/Map;

    move-result-object v4

    iput-object v4, v0, Lorg/jpos/security/SecureKeyBlock;->optionalHeaders:Ljava/util/Map;

    .line 174
    invoke-virtual {v0}, Lorg/jpos/security/SecureKeyBlock;->getOptionalHeaders()Ljava/util/Map;

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/security/SecureKeyBlockBuilder;->calcOptionalHeaderLength(Ljava/util/Map;)I

    move-result v4

    add-int/2addr v4, v3

    .line 176
    .local v4, "consumed":I
    invoke-virtual {v0}, Lorg/jpos/security/SecureKeyBlock;->getKeyBlockLength()I

    move-result v3

    if-gt v3, v4, :cond_0

    .line 178
    return-object v0

    .line 180
    :cond_0
    invoke-virtual {v0}, Lorg/jpos/security/SecureKeyBlock;->getKeyBlockLength()I

    move-result v3

    sub-int/2addr v3, v4

    .line 181
    .local v3, "remain":I
    invoke-virtual {p0, v0}, Lorg/jpos/security/SecureKeyBlockBuilder;->getMACLength(Lorg/jpos/security/SecureKeyBlock;)I

    move-result v7

    .line 182
    .local v7, "macLen":I
    sub-int v8, v3, v7

    invoke-static {v2, v8}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v8

    .line 183
    .local v8, "keyEnc":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1

    .line 184
    invoke-static {v8}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/jpos/security/SecureKeyBlock;->setKeyBytes([B)V

    .line 186
    :cond_1
    invoke-static {v2, v7}, Lorg/jpos/security/SecureKeyBlockBuilder;->readString(Ljava/io/StringReader;I)Ljava/lang/String;

    move-result-object v9

    .line 187
    .local v9, "mac":Ljava/lang/String;
    invoke-static {v9}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v10

    iput-object v10, v0, Lorg/jpos/security/SecureKeyBlock;->keyBlockMAC:[B

    .line 188
    return-object v0

    .line 160
    .end local v2    # "sr":Ljava/io/StringReader;
    .end local v3    # "remain":I
    .end local v4    # "consumed":I
    .end local v5    # "ku":Ljava/lang/String;
    .end local v6    # "numOfBlocks":I
    .end local v7    # "macLen":I
    .end local v8    # "keyEnc":Ljava/lang/String;
    .end local v9    # "mac":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The key block data cannot be shorter than 16"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getMACLength(Lorg/jpos/security/SecureKeyBlock;)I
    .locals 2
    .param p1, "skb"    # Lorg/jpos/security/SecureKeyBlock;

    .line 103
    iget-object v0, p0, Lorg/jpos/security/SecureKeyBlockBuilder;->versionsWith8CharacterMAC:Ljava/util/List;

    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyBlockVersion()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/16 v0, 0x8

    return v0

    .line 106
    :cond_0
    const/16 v0, 0x10

    return v0
.end method

.method public toKeyBlock(Lorg/jpos/security/SecureKeyBlock;)Ljava/lang/String;
    .locals 8
    .param p1, "skb"    # Lorg/jpos/security/SecureKeyBlock;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyBlockVersion()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyBlockLength()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%04d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyUsage()Lorg/jpos/security/KeyUsage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/security/KeyUsage;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getAlgorithm()Lorg/jpos/security/Algorithm;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/security/Algorithm;->getCode()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getModeOfUse()Lorg/jpos/security/ModeOfUse;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/security/ModeOfUse;->getCode()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getExportability()Lorg/jpos/security/Exportability;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jpos/security/Exportability;->getCode()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getOptionalHeaders()Ljava/util/Map;

    move-result-object v2

    .line 202
    .local v2, "optHdr":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-array v3, v1, [Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v5, "%02d"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getReserved()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 206
    .local v5, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    new-array v6, v1, [Ljava/lang/Object;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "%02X"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .end local v5    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyBytes()[B

    move-result-object v1

    .line 212
    .local v1, "b":[B
    if-eqz v1, :cond_1

    .line 213
    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    :cond_1
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyBlockMAC()[B

    move-result-object v1

    .line 216
    if-eqz v1, :cond_2

    .line 217
    invoke-virtual {p1}, Lorg/jpos/security/SecureKeyBlock;->getKeyBlockMAC()[B

    move-result-object v3

    invoke-static {v3}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public with8characterMACVersions(Ljava/lang/String;)Lorg/jpos/security/SecureKeyBlockBuilder;
    .locals 5
    .param p1, "versions"    # Ljava/lang/String;

    .line 94
    const-string v0, "The versions with 8 digits MAC cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lorg/jpos/security/SecureKeyBlockBuilder;->versionsWith8CharacterMAC:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 97
    .local v3, "ch":Ljava/lang/Character;
    iget-object v4, p0, Lorg/jpos/security/SecureKeyBlockBuilder;->versionsWith8CharacterMAC:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v3    # "ch":Ljava/lang/Character;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 99
    :cond_0
    return-object p0
.end method
