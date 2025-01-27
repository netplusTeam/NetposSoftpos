.class public final Lorg/apache/sshd/common/channel/SttySupport;
.super Ljava/lang/Object;
.source "SttySupport.java"


# static fields
.field public static final DEFAULT_SSHD_STTY_COMMAND:Ljava/lang/String; = "stty"

.field public static final DEFAULT_TERMINAL_HEIGHT:I = 0x18

.field public static final DEFAULT_TERMINAL_WIDTH:I = 0x50

.field public static final SSHD_STTY_COMMAND_PROP:Ljava/lang/String; = "sshd.sttyCommand"

.field private static final STTY_COMMAND_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TTY_PROPS_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TTY_PROPS_LAST_FETCHED_HOLDER:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 45
    const-string v1, "sshd.sttyCommand"

    const-string v2, "stty"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/sshd/common/channel/SttySupport;->STTY_COMMAND_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/sshd/common/channel/SttySupport;->TTY_PROPS_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/apache/sshd/common/channel/SttySupport;->TTY_PROPS_LAST_FETCHED_HOLDER:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "bout"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "count":I
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 278
    .local v1, "c":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 279
    return v0

    .line 282
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 283
    nop

    .end local v1    # "c":I
    add-int/lit8 v0, v0, 0x1

    .line 284
    goto :goto_0
.end method

.method public static exec(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 249
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sh"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-c"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/apache/sshd/common/channel/SttySupport;->exec([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static varargs exec([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "cmd"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 263
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 264
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 265
    .local v1, "p":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/sshd/common/channel/SttySupport;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 266
    invoke-virtual {v1}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/sshd/common/channel/SttySupport;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 267
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    .line 269
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    .local v2, "result":Ljava/lang/String;
    nop

    .line 271
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 270
    return-object v2

    .line 263
    .end local v1    # "p":Ljava/lang/Process;
    .end local v2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v1

    .end local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .end local p0    # "cmd":[Ljava/lang/String;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 271
    .restart local v0    # "bout":Ljava/io/ByteArrayOutputStream;
    .restart local p0    # "cmd":[Ljava/lang/String;
    :catchall_1
    move-exception v2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
.end method

.method private static findChar(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "stty"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "cur":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_8

    .line 108
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, "idx1":I
    const/16 v3, 0x3d

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 110
    .local v3, "idx2":I
    const/16 v4, 0x3b

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 111
    .local v4, "idx3":I
    if-ltz v1, :cond_7

    if-ltz v3, :cond_7

    if-ge v4, v3, :cond_0

    goto :goto_2

    .line 115
    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-nez v5, :cond_2

    .line 116
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 117
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v0, v1, v2

    .line 118
    goto :goto_0

    .line 120
    :cond_3
    add-int/lit8 v5, v3, 0x1

    if-gez v4, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    goto :goto_1

    :cond_4
    move v6, v4

    :goto_1
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "val":Ljava/lang/String;
    const-string/jumbo v6, "undef"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 122
    return v2

    .line 124
    :cond_5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5e

    if-ne v6, v7, :cond_6

    .line 125
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x41

    add-int/lit16 v2, v2, 0x81

    rem-int/lit16 v2, v2, 0x80

    .line 126
    .local v2, "v":I
    return v2

    .line 129
    .end local v2    # "v":I
    :cond_6
    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 130
    :catch_0
    move-exception v6

    .line 134
    return v2

    .line 113
    .end local v5    # "val":Ljava/lang/String;
    :cond_7
    :goto_2
    return v2

    .line 136
    .end local v1    # "idx1":I
    .end local v3    # "idx2":I
    .end local v4    # "idx3":I
    :cond_8
    return v2
.end method

.method private static findFlag(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "stty"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    .line 89
    .local v0, "cur":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, -0x1

    if-ge v0, v1, :cond_6

    .line 90
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 91
    .local v1, "idx1":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    .line 92
    .local v3, "idx2":I
    if-gez v1, :cond_0

    .line 93
    return v2

    .line 95
    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 96
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v3, v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    :cond_2
    move v0, v3

    .line 98
    goto :goto_0

    .line 100
    :cond_3
    const/4 v2, 0x1

    if-nez v1, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_4

    const/4 v2, 0x0

    :goto_1
    return v2

    .line 102
    .end local v1    # "idx1":I
    .end local v3    # "idx2":I
    :cond_6
    return v2
.end method

.method public static getSttyCommand()Ljava/lang/String;
    .locals 1

    .line 292
    sget-object v0, Lorg/apache/sshd/common/channel/SttySupport;->STTY_COMMAND_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTerminalHeight()I
    .locals 2

    .line 178
    :try_start_0
    const-string v0, "rows"

    invoke-static {v0}, Lorg/apache/sshd/common/channel/SttySupport;->getTerminalProperty(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .local v0, "val":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 180
    const/16 v0, 0x18

    .line 183
    :cond_0
    return v0

    .line 184
    .end local v0    # "val":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x18

    return v1
.end method

.method public static getTerminalProperty(Ljava/lang/String;)I
    .locals 4
    .param p0, "prop"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-static {}, Lorg/apache/sshd/common/channel/SttySupport;->getTtyProps()Ljava/lang/String;

    move-result-object v1

    const-string v2, ";\n"

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 197
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x20

    if-eqz v2, :cond_0

    .line 198
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 200
    .local v2, "index":I
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 201
    .end local v2    # "index":I
    :cond_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 204
    .restart local v2    # "index":I
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3

    .line 206
    .end local v1    # "str":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_1
    goto :goto_0

    .line 208
    .end local v0    # "tok":Ljava/util/StringTokenizer;
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public static getTerminalWidth()I
    .locals 2

    .line 153
    :try_start_0
    const-string v0, "columns"

    invoke-static {v0}, Lorg/apache/sshd/common/channel/SttySupport;->getTerminalProperty(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v0, "val":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 155
    const/16 v0, 0x50

    .line 158
    :cond_0
    return v0

    .line 159
    .end local v0    # "val":I
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const/16 v1, 0x50

    return v1
.end method

.method public static getTtyProps()Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    .local v0, "now":J
    sget-object v2, Lorg/apache/sshd/common/channel/SttySupport;->TTY_PROPS_LAST_FETCHED_HOLDER:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 215
    .local v3, "lastFetched":J
    sget-object v5, Lorg/apache/sshd/common/channel/SttySupport;->TTY_PROPS_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    sub-long v6, v0, v3

    const-wide/16 v8, 0x3e8

    cmp-long v6, v6, v8

    if-lez v6, :cond_1

    .line 216
    :cond_0
    const-string v6, "-a"

    invoke-static {v6}, Lorg/apache/sshd/common/channel/SttySupport;->stty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 220
    :cond_1
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2
.end method

.method public static getUnixPtyModes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 54
    invoke-static {}, Lorg/apache/sshd/common/channel/SttySupport;->getTtyProps()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/channel/SttySupport;->parsePtyModes(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static parsePtyModes(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p0, "stty"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lorg/apache/sshd/common/channel/PtyMode;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 59
    .local v0, "modes":Ljava/util/Map;, "Ljava/util/Map<Lorg/apache/sshd/common/channel/PtyMode;Ljava/lang/Integer;>;"
    sget-object v1, Lorg/apache/sshd/common/channel/PtyMode;->MODES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/channel/PtyMode;

    .line 60
    .local v2, "mode":Lorg/apache/sshd/common/channel/PtyMode;
    sget-object v3, Lorg/apache/sshd/common/channel/PtyMode;->TTY_OP_ISPEED:Lorg/apache/sshd/common/channel/PtyMode;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/apache/sshd/common/channel/PtyMode;->TTY_OP_OSPEED:Lorg/apache/sshd/common/channel/PtyMode;

    if-ne v2, v3, :cond_1

    .line 62
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v2}, Lorg/apache/sshd/common/channel/PtyMode;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "str":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x76

    if-ne v4, v5, :cond_4

    .line 68
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-static {p0, v3}, Lorg/apache/sshd/common/channel/SttySupport;->findChar(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 70
    .local v4, "v":I
    if-gez v4, :cond_2

    const-string v5, "reprint"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 71
    const-string v5, "rprnt"

    invoke-static {p0, v5}, Lorg/apache/sshd/common/channel/SttySupport;->findChar(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 73
    :cond_2
    if-ltz v4, :cond_3

    .line 74
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v4    # "v":I
    :cond_3
    goto :goto_1

    .line 77
    :cond_4
    invoke-static {p0, v3}, Lorg/apache/sshd/common/channel/SttySupport;->findFlag(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 78
    .restart local v4    # "v":I
    if-ltz v4, :cond_5

    .line 79
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .end local v2    # "mode":Lorg/apache/sshd/common/channel/PtyMode;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "v":I
    :cond_5
    :goto_1
    goto :goto_0

    .line 84
    :cond_6
    return-object v0
.end method

.method public static setSttyCommand(Ljava/lang/String;)V
    .locals 1
    .param p0, "cmd"    # Ljava/lang/String;

    .line 301
    sget-object v0, Lorg/apache/sshd/common/channel/SttySupport;->STTY_COMMAND_HOLDER:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public static stty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "args"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " < /dev/tty"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/channel/SttySupport;->exec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
