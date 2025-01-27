.class synthetic Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;
.super Ljava/lang/Object;
.source "SSLDataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

.field static final synthetic $SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

.field static final synthetic $SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

.field static final synthetic $SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 899
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->values()[Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v2}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v3, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_TASK:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    const/4 v2, 0x3

    :try_start_2
    sget-object v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    :goto_2
    const/4 v3, 0x4

    :try_start_3
    sget-object v4, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v4

    :goto_3
    const/4 v4, 0x5

    :try_start_4
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$HandshakeStatus:[I

    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v5

    .line 718
    :goto_4
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->values()[Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    :try_start_5
    sget-object v6, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->CONTENTION:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_5

    :catch_5
    move-exception v5

    :goto_5
    :try_start_6
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->DONE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_6

    :catch_6
    move-exception v5

    :goto_6
    :try_start_7
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->APP_WAIT:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    goto :goto_7

    :catch_7
    move-exception v5

    :goto_7
    :try_start_8
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->SO_WAIT_READ:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    goto :goto_8

    :catch_8
    move-exception v5

    :goto_8
    :try_start_9
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_9

    :catch_9
    move-exception v5

    :goto_9
    :try_start_a
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$utilint$net$SSLDataChannel$HSProcStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->AGAIN:Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$HSProcStatus;->ordinal()I

    move-result v6

    const/4 v7, 0x6

    aput v7, v5, v6
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    goto :goto_a

    :catch_a
    move-exception v5

    .line 690
    :goto_a
    invoke-static {}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->values()[Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

    :try_start_b
    sget-object v6, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->CONTENTION:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    goto :goto_b

    :catch_b
    move-exception v5

    :goto_b
    :try_start_c
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->AGAIN:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->ordinal()I

    move-result v6

    aput v0, v5, v6
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    goto :goto_c

    :catch_c
    move-exception v5

    :goto_c
    :try_start_d
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->SO_WAIT_WRITE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->ordinal()I

    move-result v6

    aput v2, v5, v6
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    goto :goto_d

    :catch_d
    move-exception v5

    :goto_d
    :try_start_e
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DISABLED:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->ordinal()I

    move-result v6

    aput v3, v5, v6
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    goto :goto_e

    :catch_e
    move-exception v5

    :goto_e
    :try_start_f
    sget-object v5, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$com$sleepycat$je$rep$net$DataChannel$FlushStatus:[I

    sget-object v6, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->DONE:Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/net/DataChannel$FlushStatus;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    goto :goto_f

    :catch_f
    move-exception v4

    .line 378
    :goto_f
    invoke-static {}, Ljavax/net/ssl/SSLEngineResult$Status;->values()[Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v4

    array-length v4, v4

    new-array v4, v4, [I

    sput-object v4, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    :try_start_10
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v5

    aput v1, v4, v5
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    goto :goto_10

    :catch_10
    move-exception v1

    :goto_10
    :try_start_11
    sget-object v1, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    sget-object v4, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v4}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v4

    aput v0, v1, v4
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    goto :goto_11

    :catch_11
    move-exception v0

    :goto_11
    :try_start_12
    sget-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    goto :goto_12

    :catch_12
    move-exception v0

    :goto_12
    :try_start_13
    sget-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel$1;->$SwitchMap$javax$net$ssl$SSLEngineResult$Status:[I

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngineResult$Status;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    goto :goto_13

    :catch_13
    move-exception v0

    :goto_13
    return-void
.end method
