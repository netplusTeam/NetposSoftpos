.class public final Lcom/github/devnied/emvnfccard/utils/AtrUtils;
.super Ljava/lang/Object;
.source "AtrUtils.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MAP:Lorg/apache/commons/collections4/MultiValuedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 45
    const-string v0, "\t"

    const-class v1, Lcom/github/devnied/emvnfccard/utils/AtrUtils;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    sput-object v2, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->LOGGER:Lorg/slf4j/Logger;

    .line 50
    new-instance v2, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;

    invoke-direct {v2}, Lorg/apache/commons/collections4/multimap/ArrayListValuedHashMap;-><init>()V

    sput-object v2, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    .line 53
    const/4 v2, 0x0

    .line 54
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 55
    .local v3, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 58
    .local v4, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-string v5, "/smartcard_list.txt"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    move-object v2, v1

    .line 59
    new-instance v1, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v1, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object v3, v1

    .line 60
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v1

    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "lineNumber":I
    const/4 v5, 0x0

    .line 65
    .local v5, "currentATR":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_4

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 67
    const-string v6, "#"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "http"

    invoke-virtual {v7, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, ""

    if-eqz v6, :cond_2

    if-eqz v5, :cond_2

    .line 70
    :try_start_1
    sget-object v6, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-virtual {v7, v0, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v5, v8}, Lorg/apache/commons/collections4/MultiValuedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_2
    const-string v6, "3"

    invoke-virtual {v7, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 72
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "9000$"

    invoke-virtual {v6, v9, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    goto :goto_0

    .line 74
    :cond_3
    sget-object v6, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->LOGGER:Lorg/slf4j/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Encountered unexpected line in atr list: currentATR="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Line("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 81
    .end local v1    # "lineNumber":I
    .end local v5    # "currentATR":Ljava/lang/String;
    .end local v7    # "line":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 82
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 83
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 84
    nop

    .line 85
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    return-void

    .line 81
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "br":Ljava/io/BufferedReader;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v4    # "br":Ljava/io/BufferedReader;
    :goto_1
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 82
    invoke-static {v3}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/Reader;)V

    .line 83
    invoke-static {v2}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 84
    throw v0
.end method

.method private constructor <init>()V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    return-void
.end method

.method public static final getDescription(Ljava/lang/String;)Ljava/util/Collection;
    .locals 6
    .param p0, "pAtr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v2}, Lorg/apache/commons/collections4/MultiValuedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 99
    .local v3, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "^"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "$"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 100
    sget-object v2, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v2, v3}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 101
    goto :goto_1

    .line 103
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 105
    .end local v1    # "val":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static final getDescriptionFromAts(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .param p0, "pAts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "ret":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 118
    invoke-static {p0}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "9000$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "val":Ljava/lang/String;
    sget-object v2, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v2}, Lorg/apache/commons/collections4/MultiValuedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 120
    .local v4, "key":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .line 121
    .local v5, "j":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .line 122
    .local v6, "i":I
    :cond_0
    :goto_1
    if-ltz v6, :cond_5

    .line 123
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2e

    if-eq v7, v8, :cond_4

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_1

    goto :goto_2

    .line 132
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-eq v5, v7, :cond_2

    .line 133
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    goto :goto_1

    .line 134
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_3

    .line 135
    goto :goto_3

    .line 137
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 124
    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 125
    add-int/lit8 v6, v6, -0x1

    .line 126
    if-gez v5, :cond_0

    .line 127
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    .line 128
    sget-object v7, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->MAP:Lorg/apache/commons/collections4/MultiValuedMap;

    invoke-interface {v7, v4}, Lorg/apache/commons/collections4/MultiValuedMap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 140
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "j":I
    .end local v6    # "i":I
    :cond_5
    :goto_3
    goto :goto_0

    .line 142
    .end local v1    # "val":Ljava/lang/String;
    :cond_6
    return-object v0
.end method
