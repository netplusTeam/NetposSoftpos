.class public Lorg/jpos/security/jceadapter/Console;
.super Ljava/lang/Object;
.source "Console.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;

    .line 49
    new-instance v0, Lorg/jpos/security/jceadapter/Console;

    invoke-direct {v0}, Lorg/jpos/security/jceadapter/Console;-><init>()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v1, v2, p0}, Lorg/jpos/security/jceadapter/Console;->exec(Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V

    .line 50
    return-void
.end method


# virtual methods
.method public exec(Ljava/io/PrintStream;Ljava/io/PrintStream;[Ljava/lang/String;)V
    .locals 19
    .param p1, "outPS"    # Ljava/io/PrintStream;
    .param p2, "errPS"    # Ljava/io/PrintStream;
    .param p3, "args"    # [Ljava/lang/String;

    .line 54
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    new-instance v0, Lorg/jpos/security/jceadapter/JCESecurityModule;

    invoke-direct {v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;-><init>()V

    move-object v10, v0

    .line 55
    .local v10, "sm":Lorg/jpos/security/jceadapter/JCESecurityModule;
    new-instance v0, Lorg/jpos/util/Logger;

    invoke-direct {v0}, Lorg/jpos/util/Logger;-><init>()V

    move-object v11, v0

    .line 56
    .local v11, "logger":Lorg/jpos/util/Logger;
    new-instance v0, Lorg/jpos/util/SimpleLogListener;

    invoke-direct {v0, v1}, Lorg/jpos/util/SimpleLogListener;-><init>(Ljava/io/PrintStream;)V

    invoke-virtual {v11, v0}, Lorg/jpos/util/Logger;->addListener(Lorg/jpos/util/LogListener;)V

    .line 57
    const-string v0, "jce-security-module"

    invoke-virtual {v10, v11, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    move-object v12, v0

    .line 59
    .local v12, "cfgProps":Ljava/util/Properties;
    new-instance v0, Lorg/jpos/core/SimpleConfiguration;

    invoke-direct {v0, v12}, Lorg/jpos/core/SimpleConfiguration;-><init>(Ljava/util/Properties;)V

    move-object v13, v0

    .line 60
    .local v13, "cfg":Lorg/jpos/core/SimpleConfiguration;
    const/4 v0, 0x0

    .line 61
    .local v0, "commandName":Ljava/lang/String;
    const/16 v4, 0xa

    new-array v14, v4, [Ljava/lang/String;

    .line 62
    .local v14, "commandParams":[Ljava/lang/String;
    const-string v5, "Welcome to JCE Security Module console commander!"

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 63
    array-length v5, v3

    if-nez v5, :cond_0

    .line 64
    const-string v4, "Usage: Console [-options] command [commandparameters...]"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 65
    const-string v4, "\nwhere options include:"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 66
    const-string v4, "    -lmk <filename>"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 67
    const-string v4, "                  to specify the Local Master Keys file"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    const-string v4, "    -rebuildlmk   to rebuild new Local Master Keys"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 69
    const-string v4, "                  WARNING: old Local Master Keys gets overwritten"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    const-string v4, "    -jce <provider classname>"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    const-string v4, "                  to specify a JavaTM Cryptography Extension 1.2.1 provider"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    const-string v4, "\nWhere command include: "

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 73
    const-string v4, "    GC <keyLength>"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 74
    const-string v4, "                  to generate a clear key component."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    const-string v4, "    FK <keyLength> <keyType> <component1> <component2> <component3>"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    const-string v4, "                  to form a key from three clear components."

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 77
    const-string v4, "                  and returns the key encrypted under LMK"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 78
    const-string v4, "                  Odd parity is be forced before encryption under LMK"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 79
    const-string v5, "    CK <keyLength> <keyType> <KEYunderLMK>"

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    const-string v5, "                  to generate a key check value for a key encrypted under LMK."

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 81
    const-string v5, "    IK <keyLength> <keyType> <KEYunderKEK> "

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    const-string v5, "       <kekLength> <kekType> <KEKunderLMK> <KEKcheckValue>"

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 83
    const-string v5, "                  to import a key from encryption under KEK (eg. ZMK,TMK) to encryption under LMK"

    invoke-virtual {v1, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    const-string v4, "    KE <keyLength> <keyType> <KEYunderLMK> <KEYcheckValue> "

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    const-string v4, "       <kekLength> <kekType> <KEKunderLMK> <KEKcheckValue> "

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    const-string v4, "                  to translate (export) a key from encryption under LMK"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 88
    const-string v4, "                  to encryption under KEK (eg. ZMK,TMK)"

    invoke-virtual {v1, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 91
    :cond_0
    const/4 v5, 0x0

    .line 92
    .local v5, "argsCounter":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 93
    array-length v7, v3

    if-ge v5, v7, :cond_1

    aget-object v7, v3, v5

    .line 94
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-lmk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 96
    add-int/lit8 v5, v5, 0x1

    .line 97
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "argsCounter":I
    .local v7, "argsCounter":I
    aget-object v5, v3, v5

    const-string v8, "lmk"

    invoke-virtual {v12, v8, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move v5, v7

    .line 99
    .end local v7    # "argsCounter":I
    .restart local v5    # "argsCounter":I
    :cond_1
    array-length v7, v3

    if-ge v5, v7, :cond_2

    aget-object v7, v3, v5

    .line 100
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-jce"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_2

    .line 102
    add-int/lit8 v5, v5, 0x1

    .line 103
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "argsCounter":I
    .restart local v7    # "argsCounter":I
    aget-object v5, v3, v5

    const-string v8, "provider"

    invoke-virtual {v12, v8, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move v5, v7

    .line 105
    .end local v7    # "argsCounter":I
    .restart local v5    # "argsCounter":I
    :cond_2
    array-length v7, v3

    if-ge v5, v7, :cond_3

    aget-object v7, v3, v5

    .line 106
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "-rebuildlmk"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_3

    .line 108
    add-int/lit8 v5, v5, 0x1

    .line 109
    const-string v7, "rebuildlmk"

    const-string v8, "true"

    invoke-virtual {v12, v7, v8}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 92
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 112
    .end local v6    # "j":I
    :cond_4
    array-length v4, v3

    if-ge v5, v4, :cond_6

    .line 113
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "argsCounter":I
    .local v4, "argsCounter":I
    aget-object v0, v3, v5

    .line 114
    const/4 v5, 0x0

    move/from16 v18, v5

    move v5, v4

    move/from16 v4, v18

    .line 115
    .local v4, "i":I
    .restart local v5    # "argsCounter":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_5

    .line 116
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "i":I
    .local v6, "i":I
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "argsCounter":I
    .restart local v7    # "argsCounter":I
    aget-object v5, v3, v5

    aput-object v5, v14, v4

    move v4, v6

    move v5, v7

    goto :goto_1

    .line 115
    .end local v6    # "i":I
    .end local v7    # "argsCounter":I
    .restart local v4    # "i":I
    .restart local v5    # "argsCounter":I
    :cond_5
    move-object v15, v0

    move/from16 v16, v5

    goto :goto_2

    .line 112
    .end local v4    # "i":I
    :cond_6
    move-object v15, v0

    move/from16 v16, v5

    .line 121
    .end local v0    # "commandName":Ljava/lang/String;
    .end local v5    # "argsCounter":I
    .local v15, "commandName":Ljava/lang/String;
    .local v16, "argsCounter":I
    :goto_2
    :try_start_0
    invoke-virtual {v10, v13}, Lorg/jpos/security/jceadapter/JCESecurityModule;->setConfiguration(Lorg/jpos/core/Configuration;)V
    :try_end_0
    .catch Lorg/jpos/core/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_2

    .line 125
    nop

    .line 127
    if-eqz v15, :cond_c

    .line 129
    const/4 v0, 0x0

    :try_start_1
    aget-object v0, v14, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    .line 130
    .local v0, "keyLength":S
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_7

    .line 131
    invoke-virtual {v10, v0}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateClearKeyComponent(S)Ljava/lang/String;

    .line 132
    goto/16 :goto_3

    .line 133
    :cond_7
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v9, 0x1

    if-nez v4, :cond_8

    .line 134
    aget-object v4, v14, v9

    .line 135
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    aget-object v7, v14, v7

    aget-object v9, v14, v6

    aget-object v17, v14, v5

    .line 134
    move-object v4, v10

    move v5, v0

    move-object v6, v8

    move-object v8, v9

    move-object/from16 v9, v17

    invoke-virtual/range {v4 .. v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->formKEYfromThreeClearComponents(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/security/SecureDESKey;

    .line 136
    goto/16 :goto_3

    .line 137
    :cond_8
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v8, "CK"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_9

    .line 138
    new-instance v4, Lorg/jpos/security/SecureDESKey;

    aget-object v5, v14, v9

    .line 139
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aget-object v6, v14, v7

    const-string v7, ""

    invoke-direct {v4, v0, v5, v6, v7}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v10, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->generateKeyCheckValue(Ljava/lang/Object;)[B

    .line 140
    goto/16 :goto_3

    .line 141
    :cond_9
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v8, "IK"

    invoke-virtual {v4, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x6

    const/16 v17, 0x5

    if-nez v4, :cond_a

    .line 142
    new-instance v4, Lorg/jpos/security/SecureDESKey;

    aget-object v6, v14, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    int-to-short v6, v6

    aget-object v5, v14, v5

    .line 143
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    aget-object v7, v14, v17

    aget-object v8, v14, v8

    invoke-direct {v4, v6, v5, v7, v8}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v4

    .line 144
    .local v8, "KEKunderLMK":Lorg/jpos/security/SecureDESKey;
    aget-object v4, v14, v9

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v4, 0x2

    aget-object v4, v14, v4

    .line 145
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v9, 0x1

    .line 144
    move-object v4, v10

    move v5, v0

    invoke-virtual/range {v4 .. v9}, Lorg/jpos/security/jceadapter/JCESecurityModule;->importKey(SLjava/lang/String;[BLorg/jpos/security/SecureDESKey;Z)Lorg/jpos/security/SecureDESKey;

    .line 146
    nop

    .end local v8    # "KEKunderLMK":Lorg/jpos/security/SecureDESKey;
    goto :goto_3

    .line 147
    :cond_a
    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v7, "KE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_b

    .line 148
    new-instance v4, Lorg/jpos/security/SecureDESKey;

    aget-object v5, v14, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-short v5, v5

    aget-object v7, v14, v17

    .line 149
    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v14, v8

    const/16 v17, 0x7

    aget-object v6, v14, v17

    invoke-direct {v4, v5, v7, v8, v6}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v4, "KEKunderLMK":Lorg/jpos/security/SecureDESKey;
    new-instance v5, Lorg/jpos/security/SecureDESKey;

    aget-object v6, v14, v9

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aget-object v7, v14, v7

    const/4 v8, 0x3

    aget-object v8, v14, v8

    invoke-direct {v5, v0, v6, v7, v8}, Lorg/jpos/security/SecureDESKey;-><init>(SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .local v5, "KEYunderLMK":Lorg/jpos/security/SecureDESKey;
    invoke-virtual {v10, v5, v4}, Lorg/jpos/security/jceadapter/JCESecurityModule;->exportKey(Lorg/jpos/security/SecureDESKey;Lorg/jpos/security/SecureDESKey;)[B

    .line 153
    nop

    .end local v4    # "KEKunderLMK":Lorg/jpos/security/SecureDESKey;
    .end local v5    # "KEYunderLMK":Lorg/jpos/security/SecureDESKey;
    goto :goto_3

    .line 155
    :cond_b
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/jpos/security/SMException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 159
    .end local v0    # "keyLength":S
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Invalid KeyLength"

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    goto :goto_3

    .line 157
    :catch_1
    move-exception v0

    .line 158
    .local v0, "e":Lorg/jpos/security/SMException;
    invoke-virtual {v0, v2}, Lorg/jpos/security/SMException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 161
    .end local v0    # "e":Lorg/jpos/security/SMException;
    :goto_3
    goto :goto_4

    .line 164
    :cond_c
    const-string v0, "No command specified"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 167
    .end local v16    # "argsCounter":I
    :goto_4
    move-object v0, v15

    .end local v15    # "commandName":Ljava/lang/String;
    .local v0, "commandName":Ljava/lang/String;
    :goto_5
    return-void

    .line 122
    .end local v0    # "commandName":Ljava/lang/String;
    .restart local v15    # "commandName":Ljava/lang/String;
    .restart local v16    # "argsCounter":I
    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 123
    .local v0, "e":Lorg/jpos/core/ConfigurationException;
    invoke-virtual {v0, v2}, Lorg/jpos/core/ConfigurationException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 124
    return-void
.end method
