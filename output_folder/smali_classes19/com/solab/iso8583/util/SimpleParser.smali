.class public Lcom/solab/iso8583/util/SimpleParser;
.super Ljava/lang/Object;
.source "SimpleParser.java"


# static fields
.field private static reader:Ljava/io/BufferedReader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMessage()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    sget-object v0, Lcom/solab/iso8583/util/SimpleParser;->reader:Ljava/io/BufferedReader;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    sput-object v0, Lcom/solab/iso8583/util/SimpleParser;->reader:Ljava/io/BufferedReader;

    .line 47
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Paste your ISO8583 message here (no ISO headers): "

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/solab/iso8583/util/SimpleParser;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .line 52
    new-instance v0, Lcom/solab/iso8583/MessageFactory;

    invoke-direct {v0}, Lcom/solab/iso8583/MessageFactory;-><init>()V

    .line 53
    .local v0, "mf":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<Lcom/solab/iso8583/IsoMessage;>;"
    array-length v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 54
    invoke-static {v0}, Lcom/solab/iso8583/parse/ConfigParser;->configureFromDefault(Lcom/solab/iso8583/MessageFactory;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    invoke-static {}, Ljava/lang/System;->console()Ljava/io/Console;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    aget-object v5, p0, v3

    aput-object v5, v4, v3

    const-string v5, "Attempting to configure MessageFactory from %s...%n"

    invoke-virtual {v1, v5, v4}, Ljava/io/Console;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/Console;

    .line 59
    :cond_1
    aget-object v1, p0, v3

    .line 60
    .local v1, "url":Ljava/lang/String;
    const-string v4, "://"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    new-instance v4, Ljava/net/URL;

    aget-object v5, p0, v3

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/solab/iso8583/parse/ConfigParser;->configureFromUrl(Lcom/solab/iso8583/MessageFactory;Ljava/net/URL;)V

    goto :goto_0

    .line 63
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/solab/iso8583/parse/ConfigParser;->configureFromUrl(Lcom/solab/iso8583/MessageFactory;Ljava/net/URL;)V

    .line 67
    .end local v1    # "url":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/solab/iso8583/util/SimpleParser;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "line":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 69
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/solab/iso8583/MessageFactory;->parseMessage([BI)Lcom/solab/iso8583/IsoMessage;

    move-result-object v4

    .line 70
    .local v4, "m":Lcom/solab/iso8583/IsoMessage;
    if-eqz v4, :cond_4

    .line 71
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/solab/iso8583/IsoMessage;->getType()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const-string v7, "Message type: %04x%n"

    invoke-virtual {v5, v7, v6}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 72
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "FIELD TYPE    VALUE"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    const/4 v5, 0x2

    .local v5, "i":I
    :goto_2
    const/16 v6, 0x80

    if-gt v5, v6, :cond_4

    .line 74
    invoke-virtual {v4, v5}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v6

    .line 75
    .local v6, "f":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v6, :cond_3

    .line 76
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v6}, Lcom/solab/iso8583/IsoValue;->getType()Lcom/solab/iso8583/IsoType;

    move-result-object v9

    aput-object v9, v8, v2

    const/4 v9, 0x2

    invoke-virtual {v6}, Lcom/solab/iso8583/IsoValue;->getLength()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const-string v9, "%5d %-7s (%4d) ["

    invoke-virtual {v7, v9, v8}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 77
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6}, Lcom/solab/iso8583/IsoValue;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 78
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(C)V

    .line 73
    .end local v6    # "f":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 82
    .end local v5    # "i":I
    :cond_4
    invoke-static {}, Lcom/solab/iso8583/util/SimpleParser;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 83
    .end local v4    # "m":Lcom/solab/iso8583/IsoMessage;
    goto :goto_1

    .line 84
    :cond_5
    return-void
.end method
