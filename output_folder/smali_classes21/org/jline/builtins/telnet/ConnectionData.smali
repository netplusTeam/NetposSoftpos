.class public Lorg/jline/builtins/telnet/ConnectionData;
.super Ljava/lang/Object;
.source "ConnectionData.java"


# instance fields
.field private address:Ljava/net/InetAddress;

.field private connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hostAddress:Ljava/lang/String;

.field private hostName:Ljava/lang/String;

.field private lastActivity:J

.field private lineMode:Z

.field private locale:Ljava/util/Locale;

.field private loginShell:Ljava/lang/String;

.field private negotiatedTerminalType:Ljava/lang/String;

.field private port:I

.field private socket:Ljava/net/Socket;

.field private terminalGeometry:[I

.field private terminalGeometryChanged:Z

.field private warned:Z


# direct methods
.method public constructor <init>(Ljava/net/Socket;Lorg/jline/builtins/telnet/ConnectionManager;)V
    .locals 4
    .param p1, "sock"    # Ljava/net/Socket;
    .param p2, "cm"    # Lorg/jline/builtins/telnet/ConnectionManager;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometryChanged:Z

    .line 76
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->lineMode:Z

    .line 86
    iput-object p1, p0, Lorg/jline/builtins/telnet/ConnectionData;->socket:Ljava/net/Socket;

    .line 87
    iput-object p2, p0, Lorg/jline/builtins/telnet/ConnectionData;->connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

    .line 88
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lorg/jline/builtins/telnet/ConnectionData;->address:Ljava/net/InetAddress;

    .line 89
    invoke-direct {p0}, Lorg/jline/builtins/telnet/ConnectionData;->setHostName()V

    .line 90
    invoke-direct {p0}, Lorg/jline/builtins/telnet/ConnectionData;->setHostAddress()V

    .line 91
    invoke-direct {p0}, Lorg/jline/builtins/telnet/ConnectionData;->setLocale()V

    .line 92
    invoke-virtual {p1}, Ljava/net/Socket;->getPort()I

    move-result v2

    iput v2, p0, Lorg/jline/builtins/telnet/ConnectionData;->port:I

    .line 94
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometry:[I

    .line 95
    const/16 v3, 0x50

    aput v3, v2, v1

    .line 96
    const/16 v1, 0x19

    aput v1, v2, v0

    .line 97
    const-string v0, "default"

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->negotiatedTerminalType:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->environment:Ljava/util/Map;

    .line 100
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/ConnectionData;->activity()V

    .line 101
    return-void
.end method

.method private setHostAddress()V
    .locals 1

    .line 390
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->hostAddress:Ljava/lang/String;

    .line 391
    return-void
.end method

.method private setHostName()V
    .locals 1

    .line 383
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->address:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->hostName:Ljava/lang/String;

    .line 384
    return-void
.end method

.method private setLocale()V
    .locals 4

    .line 401
    invoke-virtual {p0}, Lorg/jline/builtins/telnet/ConnectionData;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "country":Ljava/lang/String;
    :try_start_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 404
    const-string v1, "at"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "de"

    if-eqz v1, :cond_0

    .line 405
    :try_start_1
    new-instance v1, Ljava/util/Locale;

    const-string v3, "AT"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto/16 :goto_0

    .line 406
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 407
    new-instance v1, Ljava/util/Locale;

    const-string v3, "DE"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto/16 :goto_0

    .line 408
    :cond_1
    const-string v1, "mx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "es"

    if-eqz v1, :cond_2

    .line 409
    :try_start_2
    new-instance v1, Ljava/util/Locale;

    const-string v3, "MX"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto/16 :goto_0

    .line 410
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 411
    new-instance v1, Ljava/util/Locale;

    const-string v3, "ES"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto/16 :goto_0

    .line 412
    :cond_3
    const-string v1, "it"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 413
    sget-object v1, Ljava/util/Locale;->ITALY:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto/16 :goto_0

    .line 414
    :cond_4
    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 415
    sget-object v1, Ljava/util/Locale;->FRANCE:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 416
    :cond_5
    const-string v1, "uk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 417
    new-instance v1, Ljava/util/Locale;

    const-string v2, "en"

    const-string v3, "GB"

    invoke-direct {v1, v2, v3}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 418
    :cond_6
    const-string v1, "arpa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 419
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 420
    :cond_7
    const-string v1, "com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 421
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 422
    :cond_8
    const-string v1, "edu"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 423
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 424
    :cond_9
    const-string v1, "gov"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 425
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 426
    :cond_a
    const-string v1, "org"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 427
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 428
    :cond_b
    const-string v1, "mil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 429
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    goto :goto_0

    .line 432
    :cond_c
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 437
    :goto_0
    goto :goto_1

    .line 434
    :catch_0
    move-exception v1

    .line 436
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iput-object v2, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    .line 438
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public activity()V
    .locals 2

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->warned:Z

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->lastActivity:J

    .line 213
    return-void
.end method

.method public getEnvironment()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->environment:Ljava/util/Map;

    return-object v0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->hostAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHostName()Ljava/lang/String;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->hostName:Ljava/lang/String;

    return-object v0
.end method

.method public getInetAddress()Ljava/net/InetAddress;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->address:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLastActivity()J
    .locals 2

    .line 196
    iget-wide v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->lastActivity:J

    return-wide v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getLoginShell()Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->loginShell:Ljava/lang/String;

    return-object v0
.end method

.method public getManager()Lorg/jline/builtins/telnet/ConnectionManager;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->connectionManager:Lorg/jline/builtins/telnet/ConnectionManager;

    return-object v0
.end method

.method public getNegotiatedTerminalType()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->negotiatedTerminalType:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 132
    iget v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->port:I

    return v0
.end method

.method public getSocket()Ljava/net/Socket;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public getTerminalColumns()I
    .locals 2

    .line 281
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometry:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getTerminalGeometry()[I
    .locals 1

    .line 271
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometryChanged:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometryChanged:Z

    .line 272
    :cond_0
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometry:[I

    return-object v0
.end method

.method public getTerminalRows()I
    .locals 2

    .line 290
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometry:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public isLineMode()Z
    .locals 1

    .line 364
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->lineMode:Z

    return v0
.end method

.method public isTerminalGeometryChanged()Z
    .locals 1

    .line 301
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometryChanged:Z

    return v0
.end method

.method public isWarned()Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->warned:Z

    return v0
.end method

.method public setLineMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 376
    iput-boolean p1, p0, Lorg/jline/builtins/telnet/ConnectionData;->lineMode:Z

    .line 377
    return-void
.end method

.method public setLoginShell(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .line 355
    iput-object p1, p0, Lorg/jline/builtins/telnet/ConnectionData;->loginShell:Ljava/lang/String;

    .line 356
    return-void
.end method

.method public setNegotiatedTerminalType(Ljava/lang/String;)V
    .locals 0
    .param p1, "termtype"    # Ljava/lang/String;

    .line 326
    iput-object p1, p0, Lorg/jline/builtins/telnet/ConnectionData;->negotiatedTerminalType:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setTerminalGeometry(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 254
    iget-object v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometry:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 255
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 256
    iput-boolean v1, p0, Lorg/jline/builtins/telnet/ConnectionData;->terminalGeometryChanged:Z

    .line 257
    return-void
.end method

.method public setWarned(Z)V
    .locals 2
    .param p1, "bool"    # Z

    .line 238
    iput-boolean p1, p0, Lorg/jline/builtins/telnet/ConnectionData;->warned:Z

    .line 239
    if-nez p1, :cond_0

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jline/builtins/telnet/ConnectionData;->lastActivity:J

    .line 242
    :cond_0
    return-void
.end method
