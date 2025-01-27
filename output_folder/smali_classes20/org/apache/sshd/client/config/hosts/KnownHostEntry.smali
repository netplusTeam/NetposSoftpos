.class public Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
.super Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;
.source "KnownHostEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/client/config/hosts/KnownHostEntry$LazyDefaultConfigFileHolder;
    }
.end annotation


# static fields
.field public static final MARKER_INDICATOR:C = '@'

.field public static final STD_HOSTS_FILENAME:Ljava/lang/String; = "known_hosts"


# instance fields
.field private hashedEntry:Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

.field private keyEntry:Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

.field private line:Ljava/lang/String;

.field private marker:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;-><init>()V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    .line 83
    invoke-direct {p0}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;-><init>()V

    .line 84
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->line:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public static getDefaultKnownHostsFile()Ljava/nio/file/Path;
    .locals 1

    .line 142
    invoke-static {}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry$LazyDefaultConfigFileHolder;->access$000()Ljava/nio/file/Path;

    move-result-object v0

    return-object v0
.end method

.method public static parseKnownHostEntry(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .locals 1
    .param p0, "line"    # Ljava/lang/String;

    .line 220
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    invoke-direct {v0}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;-><init>()V

    :goto_0
    invoke-static {v0, p0}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->parseKnownHostEntry(Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v0

    return-object v0
.end method

.method public static parseKnownHostEntry(Lorg/apache/sshd/client/config/hosts/KnownHostEntry;Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    .locals 8
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Lorg/apache/sshd/client/config/hosts/KnownHostEntry;",
            ">(TE;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .line 224
    .local p0, "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;, "TE;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "line":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    goto/16 :goto_5

    .line 229
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setConfigLine(Ljava/lang/String;)V

    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x40

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_3

    .line 232
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 233
    .local v2, "pos":I
    if-lez v2, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    const-string v7, "Missing marker name end delimiter in line=%s"

    invoke-static {v3, v7, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 234
    if-le v2, v6, :cond_2

    move v3, v6

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    const-string v7, "No marker name after indicator in line=%s"

    invoke-static {v3, v7, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setMarker(Ljava/lang/String;)V

    .line 236
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 237
    .end local v2    # "pos":I
    goto :goto_2

    .line 238
    :cond_3
    invoke-virtual {p0, v5}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setMarker(Ljava/lang/String;)V

    .line 241
    :goto_2
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 242
    .restart local v2    # "pos":I
    if-lez v2, :cond_4

    goto :goto_3

    :cond_4
    move v6, v1

    :goto_3
    const-string v3, "Missing host patterns end delimiter in line=%s"

    invoke-static {v6, v3, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 243
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 244
    .local v3, "hostPattern":Ljava/lang/String;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x7c

    if-ne v1, v4, :cond_5

    .line 247
    nop

    .line 248
    invoke-static {v3}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->parse(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    move-result-object v1

    const-string v4, "Failed to extract host hash value from line=%s"

    invoke-static {v1, v4, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    .line 250
    .local v1, "hash":Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setHashedEntry(Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;)V

    .line 251
    invoke-virtual {p0, v5}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setPatterns(Ljava/util/Collection;)V

    .line 252
    .end local v1    # "hash":Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
    goto :goto_4

    .line 253
    :cond_5
    invoke-virtual {p0, v5}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setHashedEntry(Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;)V

    .line 254
    const/16 v1, 0x2c

    invoke-static {v3, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->parsePatterns([Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setPatterns(Ljava/util/Collection;)V

    .line 257
    :goto_4
    nop

    .line 258
    invoke-static {v0}, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;->parseAuthorizedKeyEntry(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    move-result-object v1

    const-string v4, "No valid key entry recovered from line=%s"

    invoke-static {v1, v4, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    .line 260
    .local v1, "key":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->setKeyEntry(Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;)V

    .line 261
    return-object p0

    .line 226
    .end local v1    # "key":Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    .end local v2    # "pos":I
    .end local v3    # "hostPattern":Ljava/lang/String;
    :cond_6
    :goto_5
    return-object p0
.end method

.method public static readKnownHostEntries(Ljava/io/BufferedReader;)Ljava/util/List;
    .locals 8
    .param p0, "rdr"    # Ljava/io/BufferedReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedReader;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/KnownHostEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    const/4 v0, 0x0

    .line 179
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/client/config/hosts/KnownHostEntry;>;"
    const/4 v1, 0x1

    .line 180
    .local v1, "lineNumber":I
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_5

    .line 181
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    goto :goto_1

    .line 186
    :cond_0
    const/16 v3, 0x23

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 187
    .local v3, "pos":I
    if-nez v3, :cond_1

    .line 188
    goto :goto_1

    .line 191
    :cond_1
    if-lez v3, :cond_2

    .line 192
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 193
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 197
    :cond_2
    :try_start_0
    invoke-static {v2}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->parseKnownHostEntry(Ljava/lang/String;)Lorg/apache/sshd/client/config/hosts/KnownHostEntry;

    move-result-object v4

    .line 198
    .local v4, "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    if-nez v4, :cond_3

    .line 199
    goto :goto_1

    .line 202
    :cond_3
    if-nez v0, :cond_4

    .line 203
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 205
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    nop

    .line 180
    .end local v3    # "pos":I
    .end local v4    # "entry":Lorg/apache/sshd/client/config/hosts/KnownHostEntry;
    :goto_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .restart local v3    # "pos":I
    :catch_0
    move-exception v4

    goto :goto_2

    :catch_1
    move-exception v4

    .line 207
    .local v4, "e":Ljava/lang/Throwable;
    :goto_2
    new-instance v5, Ljava/io/StreamCorruptedException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to parse line #"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\': "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 208
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 212
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "pos":I
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_5
    if-nez v0, :cond_6

    .line 213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 215
    :cond_6
    return-object v0
.end method

.method public static readKnownHostEntries(Ljava/io/InputStream;Z)Ljava/util/List;
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/KnownHostEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseInputStream;->resolveInputStream(Ljava/io/InputStream;Z)Ljava/io/InputStream;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 159
    .local v0, "reader":Ljava/io/Reader;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->readKnownHostEntries(Ljava/io/Reader;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 159
    return-object v1

    .line 158
    :catchall_0
    move-exception v1

    .end local v0    # "reader":Ljava/io/Reader;
    .end local p0    # "inStream":Ljava/io/InputStream;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .restart local v0    # "reader":Ljava/io/Reader;
    .restart local p0    # "inStream":Ljava/io/InputStream;
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

.method public static readKnownHostEntries(Ljava/io/Reader;Z)Ljava/util/List;
    .locals 4
    .param p0, "rdr"    # Ljava/io/Reader;
    .param p1, "okToClose"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/KnownHostEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    new-instance v0, Ljava/io/BufferedReader;

    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/io/NoCloseReader;->resolveReader(Ljava/io/Reader;Z)Ljava/io/Reader;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 165
    .local v0, "buf":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->readKnownHostEntries(Ljava/io/BufferedReader;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 165
    return-object v1

    .line 164
    :catchall_0
    move-exception v1

    .end local v0    # "buf":Ljava/io/BufferedReader;
    .end local p0    # "rdr":Ljava/io/Reader;
    .end local p1    # "okToClose":Z
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    .restart local v0    # "buf":Ljava/io/BufferedReader;
    .restart local p0    # "rdr":Ljava/io/Reader;
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

.method public static readKnownHostEntries(Ljava/net/URL;)Ljava/util/List;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/KnownHostEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 153
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->readKnownHostEntries(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 153
    :cond_0
    return-object v1

    .line 152
    :catchall_0
    move-exception v1

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "url":Ljava/net/URL;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
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

.method public static varargs readKnownHostEntries(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/util/List;
    .locals 4
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "options"    # [Ljava/nio/file/OpenOption;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/file/Path;",
            "[",
            "Ljava/nio/file/OpenOption;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/config/hosts/KnownHostEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 146
    invoke-static {p0, p1}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object v0

    .line 147
    .local v0, "input":Ljava/io/InputStream;
    const/4 v1, 0x1

    :try_start_0
    invoke-static {v0, v1}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->readKnownHostEntries(Ljava/io/InputStream;Z)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 147
    :cond_0
    return-object v1

    .line 146
    :catchall_0
    move-exception v1

    .end local v0    # "input":Ljava/io/InputStream;
    .end local p0    # "path":Ljava/nio/file/Path;
    .end local p1    # "options":[Ljava/nio/file/OpenOption;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 148
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


# virtual methods
.method public getConfigLine()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->line:Ljava/lang/String;

    return-object v0
.end method

.method public getHashedEntry()Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->hashedEntry:Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    return-object v0
.end method

.method public getKeyEntry()Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;
    .locals 1

    .line 107
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->keyEntry:Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public isHostMatch(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 124
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/client/config/hosts/HostPatternsHolder;->isHostMatch(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 125
    return v1

    .line 128
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getHashedEntry()Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    move-result-object v0

    .line 129
    .local v0, "hash":Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;->isHostMatch(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setConfigLine(Ljava/lang/String;)V
    .locals 0
    .param p1, "line"    # Ljava/lang/String;

    .line 95
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->line:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setHashedEntry(Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;)V
    .locals 0
    .param p1, "hashedEntry"    # Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    .line 119
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->hashedEntry:Lorg/apache/sshd/client/config/hosts/KnownHostHashValue;

    .line 120
    return-void
.end method

.method public setKeyEntry(Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;)V
    .locals 0
    .param p1, "keyEntry"    # Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    .line 111
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->keyEntry:Lorg/apache/sshd/common/config/keys/AuthorizedKeyEntry;

    .line 112
    return-void
.end method

.method public setMarker(Ljava/lang/String;)V
    .locals 0
    .param p1, "marker"    # Ljava/lang/String;

    .line 103
    iput-object p1, p0, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->marker:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lorg/apache/sshd/client/config/hosts/KnownHostEntry;->getConfigLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
