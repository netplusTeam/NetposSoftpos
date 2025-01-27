.class public final Lorg/apache/sshd/server/kex/Moduli;
.super Ljava/lang/Object;
.source "Moduli.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    }
.end annotation


# static fields
.field private static final INTERNAL_MODULI_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/kex/Moduli$DhGroup;",
            ">;>;>;"
        }
    .end annotation
.end field

.field public static final INTERNAL_MODULI_RESPATH:Ljava/lang/String; = "/org/apache/sshd/moduli"

.field public static final MODULI_TESTS_COMPOSITE:I = 0x1

.field public static final MODULI_TYPE_SAFE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/kex/Moduli;->INTERNAL_MODULI_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static clearInternalModuliCache()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/kex/Moduli$DhGroup;",
            ">;>;"
        }
    .end annotation

    .line 89
    sget-object v0, Lorg/apache/sshd/server/kex/Moduli;->INTERNAL_MODULI_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public static loadInternalModuli(Ljava/net/URL;)Ljava/util/List;
    .locals 6
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/kex/Moduli$DhGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    if-eqz p0, :cond_3

    .line 97
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "moduliStr":Ljava/lang/String;
    sget-object v1, Lorg/apache/sshd/server/kex/Moduli;->INTERNAL_MODULI_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    .local v2, "lastModuli":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;>;"
    if-nez v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "lastResource":Ljava/lang/String;
    :goto_0
    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    return-object v1

    .line 104
    :cond_1
    invoke-static {p0}, Lorg/apache/sshd/server/kex/Moduli;->parseModuli(Ljava/net/URL;)Ljava/util/List;

    move-result-object v4

    .line 105
    .local v4, "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 111
    :goto_1
    new-instance v5, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v5, v0, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 112
    return-object v4

    .line 94
    .end local v0    # "moduliStr":Ljava/lang/String;
    .end local v2    # "lastModuli":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;>;"
    .end local v3    # "lastResource":Ljava/lang/String;
    .end local v4    # "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    :cond_3
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No internal moduli resource specified"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseModuli(Ljava/net/URL;)Ljava/util/List;
    .locals 13
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/kex/Moduli$DhGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v0, "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 118
    .local v1, "r":Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, "line":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_7

    .line 119
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 120
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 121
    goto :goto_1

    .line 124
    :cond_0
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    goto :goto_1

    .line 128
    :cond_1
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "parts":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x7

    if-eq v4, v5, :cond_2

    .line 131
    goto :goto_1

    .line 135
    :cond_2
    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 136
    .local v5, "type":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 137
    goto :goto_1

    .line 141
    :cond_3
    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 142
    .local v6, "tests":I
    and-int/lit8 v7, v6, 0x1

    if-nez v7, :cond_6

    and-int/lit8 v7, v6, -0x2

    if-nez v7, :cond_4

    .line 143
    goto :goto_1

    .line 147
    :cond_4
    const/4 v7, 0x3

    aget-object v7, v3, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 148
    .local v7, "tries":I
    if-nez v7, :cond_5

    .line 149
    goto :goto_1

    .line 152
    :cond_5
    new-instance v8, Lorg/apache/sshd/server/kex/Moduli$DhGroup;

    const/4 v9, 0x4

    aget-object v9, v3, v9

    .line 153
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v9, v4

    new-instance v4, Ljava/math/BigInteger;

    const/4 v10, 0x5

    aget-object v10, v3, v10

    const/16 v11, 0x10

    invoke-direct {v4, v10, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v10, Ljava/math/BigInteger;

    const/4 v12, 0x6

    aget-object v12, v3, v12

    invoke-direct {v10, v12, v11}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-direct {v8, v9, v4, v10}, Lorg/apache/sshd/server/kex/Moduli$DhGroup;-><init>(ILjava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v4, v8

    .line 156
    .local v4, "group":Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v3    # "parts":[Ljava/lang/String;
    .end local v4    # "group":Lorg/apache/sshd/server/kex/Moduli$DhGroup;
    .end local v5    # "type":I
    .end local v6    # "tests":I
    .end local v7    # "tries":I
    :cond_6
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v3

    goto :goto_0

    .line 159
    .end local v2    # "line":Ljava/lang/String;
    :cond_7
    nop

    .line 160
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 159
    return-object v0

    .line 117
    :catchall_0
    move-exception v2

    .end local v0    # "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    .end local v1    # "r":Ljava/io/BufferedReader;
    .end local p0    # "url":Ljava/net/URL;
    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 160
    .restart local v0    # "groups":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/kex/Moduli$DhGroup;>;"
    .restart local v1    # "r":Ljava/io/BufferedReader;
    .restart local p0    # "url":Ljava/net/URL;
    :catchall_1
    move-exception v3

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v3
.end method
