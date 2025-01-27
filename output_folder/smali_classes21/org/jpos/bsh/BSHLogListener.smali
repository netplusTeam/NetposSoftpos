.class public Lorg/jpos/bsh/BSHLogListener;
.super Ljava/lang/Object;
.source "BSHLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/bsh/BSHLogListener$ScriptInfo;
    }
.end annotation


# static fields
.field protected static final patterns:[Ljava/lang/String;


# instance fields
.field protected cfg:Lorg/jpos/core/Configuration;

.field protected scripts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/jpos/bsh/BSHLogListener$ScriptInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    const-string v0, "tag"

    const-string v1, "realm"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/jpos/bsh/BSHLogListener;->patterns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/bsh/BSHLogListener;->scripts:Ljava/util/Map;

    .line 98
    return-void
.end method

.method protected static replace([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .param p0, "src"    # [Ljava/lang/String;
    .param p1, "patterns"    # [Ljava/lang/String;
    .param p2, "to"    # [Ljava/lang/String;

    .line 105
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 106
    .local v0, "ret":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_5

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    aget-object v3, p0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 108
    .local v2, "buff":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 110
    .local v3, "end":I
    :goto_1
    aget-object v4, p0, v1

    const/16 v5, 0x24

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    move v5, v4

    .local v5, "begin":I
    if-ltz v4, :cond_4

    aget-object v4, p0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_4

    .line 111
    aget-object v4, p0, v1

    invoke-virtual {v4, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const/4 v4, 0x0

    .line 113
    .local v4, "patternFound":Z
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_2
    array-length v7, p1

    if-ge v6, v7, :cond_2

    if-nez v4, :cond_2

    .line 114
    aget-object v7, p0, v1

    aget-object v8, p1, v6

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    const/4 v9, 0x1

    if-ne v7, v8, :cond_0

    move v7, v9

    goto :goto_3

    :cond_0
    const/4 v7, 0x0

    :goto_3
    move v4, v7

    if-eqz v7, :cond_1

    .line 115
    aget-object v7, p2, v6

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    aget-object v7, p1, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v7, v9

    move v3, v7

    .line 113
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 119
    .end local v6    # "k":I
    :cond_2
    if-nez v4, :cond_3

    add-int/lit8 v3, v5, 0x1

    .line 120
    .end local v4    # "patternFound":Z
    :cond_3
    goto :goto_1

    .line 121
    :cond_4
    aget-object v4, p0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    .line 106
    .end local v2    # "buff":Ljava/lang/StringBuilder;
    .end local v3    # "end":I
    .end local v5    # "begin":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "i":I
    :cond_5
    return-object v0
.end method


# virtual methods
.method protected addScriptInfo(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "lastModified"    # J

    .line 206
    const-string v0, "The script file name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Lorg/jpos/bsh/BSHLogListener;->scripts:Ljava/util/Map;

    new-instance v1, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;

    invoke-direct {v1, p2, p3, p4}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    return-void
.end method

.method protected getScriptInfo(Ljava/lang/String;)Lorg/jpos/bsh/BSHLogListener$ScriptInfo;
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .line 201
    const-string v0, "The script file name cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 202
    iget-object v0, p0, Lorg/jpos/bsh/BSHLogListener;->scripts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;

    return-object v0
.end method

.method protected loadCode(Ljava/io/File;)Ljava/lang/String;
    .locals 6
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 189
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int v1, v1

    new-array v1, v1, [C

    .line 191
    .local v1, "content":[C
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 193
    .local v2, "r":Ljava/io/Reader;
    :goto_0
    :try_start_0
    invoke-virtual {v2, v1}, Ljava/io/Reader;->read([C)I

    move-result v3

    move v4, v3

    .local v4, "l":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 196
    nop

    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 195
    .end local v4    # "l":I
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 196
    throw v3
.end method

.method public log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 18
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 130
    move-object/from16 v1, p0

    const-string v2, "event"

    move-object/from16 v3, p1

    .line 131
    .local v3, "ret":Lorg/jpos/util/LogEvent;
    const/4 v4, 0x0

    .line 133
    .local v4, "processed":Z
    :try_start_0
    iget-object v0, v1, Lorg/jpos/bsh/BSHLogListener;->cfg:Lorg/jpos/core/Configuration;

    const-string v5, "source"

    invoke-interface {v0, v5}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lorg/jpos/bsh/BSHLogListener;->patterns:[Ljava/lang/String;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/util/LogEvent;->getTag()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual/range {p1 .. p1}, Lorg/jpos/util/LogEvent;->getRealm()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-static {v0, v5, v6}, Lorg/jpos/bsh/BSHLogListener;->replace([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-object v5, v0

    .line 134
    .local v5, "sources":[Ljava/lang/String;
    const/4 v0, 0x0

    move v6, v4

    move-object v4, v3

    move v3, v0

    .local v3, "i":I
    .local v4, "ret":Lorg/jpos/util/LogEvent;
    .local v6, "processed":Z
    :goto_0
    :try_start_1
    array-length v0, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ge v3, v0, :cond_c

    if-eqz v4, :cond_c

    .line 136
    :try_start_2
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    .line 137
    .local v0, "bsh":Lbsh/Interpreter;
    aget-object v8, v5, v3

    invoke-virtual {v1, v8}, Lorg/jpos/bsh/BSHLogListener;->getScriptInfo(Ljava/lang/String;)Lorg/jpos/bsh/BSHLogListener$ScriptInfo;

    move-result-object v8

    .line 138
    .local v8, "info":Lorg/jpos/bsh/BSHLogListener$ScriptInfo;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->getNameSpace()Lbsh/NameSpace;

    move-result-object v9

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 139
    .local v9, "ns":Lbsh/NameSpace;
    :goto_1
    if-eqz v9, :cond_1

    invoke-virtual {v0, v9}, Lbsh/Interpreter;->setNameSpace(Lbsh/NameSpace;)V

    .line 140
    :cond_1
    invoke-virtual {v0, v2, v4}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 141
    const-string v10, "cfg"

    iget-object v11, v1, Lorg/jpos/bsh/BSHLogListener;->cfg:Lorg/jpos/core/Configuration;

    invoke-virtual {v0, v10, v11}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    new-instance v10, Ljava/io/File;

    aget-object v11, v5, v3

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    .local v10, "f":Ljava/io/File;
    iget-object v11, v1, Lorg/jpos/bsh/BSHLogListener;->cfg:Lorg/jpos/core/Configuration;

    const-string v12, "preload-scripts"

    invoke-interface {v11, v12}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 144
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 146
    const/4 v6, 0x1

    .line 147
    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v0, v11}, Lbsh/Interpreter;->eval(Ljava/io/Reader;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 150
    :cond_2
    if-nez v8, :cond_3

    iget-object v11, v1, Lorg/jpos/bsh/BSHLogListener;->scripts:Ljava/util/Map;

    aget-object v12, v5, v3

    new-instance v13, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;

    invoke-direct {v13}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;-><init>()V

    move-object v8, v13

    invoke-interface {v11, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->getLastCheck()J

    move-result-wide v13

    iget-object v15, v1, Lorg/jpos/bsh/BSHLogListener;->cfg:Lorg/jpos/core/Configuration;

    const-string v7, "reload"

    invoke-interface {v15, v7}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    add-long v13, v13, v16

    cmp-long v7, v11, v13

    if-lez v7, :cond_5

    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setLastCheck(J)V

    .line 153
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 154
    invoke-virtual {v8}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->getLastModified()J

    move-result-wide v11

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    cmp-long v7, v11, v13

    if-eqz v7, :cond_5

    .line 155
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setLastModified(J)V

    .line 156
    invoke-virtual {v1, v10}, Lorg/jpos/bsh/BSHLogListener;->loadCode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setCode(Ljava/lang/String;)V

    goto :goto_2

    .line 159
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {v8, v7}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setCode(Ljava/lang/String;)V

    .line 162
    :cond_5
    :goto_2
    invoke-virtual {v8}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->getCode()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 163
    const/4 v6, 0x1

    .line 164
    new-instance v7, Ljava/io/StringReader;

    invoke-virtual {v8}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->getCode()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lbsh/Interpreter;->eval(Ljava/io/Reader;)Ljava/lang/Object;

    goto :goto_3

    .line 165
    :cond_6
    iget-object v7, v1, Lorg/jpos/bsh/BSHLogListener;->scripts:Ljava/util/Map;

    aget-object v11, v5, v3

    invoke-interface {v7, v11}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    :cond_7
    :goto_3
    invoke-virtual {v0, v2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/util/LogEvent;

    move-object v4, v7

    .line 168
    const-string v7, "saveNameSpace"

    invoke-virtual {v0, v7}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    .line 169
    .local v7, "saveNS":Ljava/lang/Object;
    instance-of v11, v7, Ljava/lang/Boolean;

    if-eqz v11, :cond_8

    move-object v11, v7

    check-cast v11, Ljava/lang/Boolean;

    .line 170
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_4

    :cond_8
    iget-object v11, v1, Lorg/jpos/bsh/BSHLogListener;->cfg:Lorg/jpos/core/Configuration;

    const-string v12, "save-name-space"

    invoke-interface {v11, v12}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 171
    .local v11, "saveNameSpace":Z
    :goto_4
    if-eqz v11, :cond_a

    .line 172
    if-eqz v8, :cond_9

    invoke-virtual {v0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setNameSpace(Lbsh/NameSpace;)V

    goto :goto_5

    .line 173
    :cond_9
    iget-object v12, v1, Lorg/jpos/bsh/BSHLogListener;->scripts:Ljava/util/Map;

    aget-object v13, v5, v3

    new-instance v14, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;

    invoke-virtual {v0}, Lbsh/Interpreter;->getNameSpace()Lbsh/NameSpace;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;-><init>(Lbsh/NameSpace;)V

    invoke-interface {v12, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 174
    :cond_a
    if-eqz v8, :cond_b

    const/4 v12, 0x0

    invoke-virtual {v8, v12}, Lorg/jpos/bsh/BSHLogListener$ScriptInfo;->setNameSpace(Lbsh/NameSpace;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 177
    .end local v0    # "bsh":Lbsh/Interpreter;
    .end local v7    # "saveNS":Ljava/lang/Object;
    .end local v8    # "info":Lorg/jpos/bsh/BSHLogListener$ScriptInfo;
    .end local v9    # "ns":Lbsh/NameSpace;
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "saveNameSpace":Z
    :cond_b
    :goto_5
    goto :goto_6

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v4, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v12, 0x0

    .line 179
    .end local v3    # "i":I
    if-nez v6, :cond_d

    iget-object v0, v1, Lorg/jpos/bsh/BSHLogListener;->cfg:Lorg/jpos/core/Configuration;

    const-string v2, "filter-by-default"

    invoke-interface {v0, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_d

    move-object v7, v12

    goto :goto_7

    :cond_d
    move-object v7, v4

    :goto_7
    return-object v7

    .line 180
    .end local v5    # "sources":[Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v3, v4

    move v4, v6

    goto :goto_8

    .end local v6    # "processed":Z
    .local v3, "ret":Lorg/jpos/util/LogEvent;
    .local v4, "processed":Z
    :catch_2
    move-exception v0

    .line 181
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_8
    if-eqz v3, :cond_e

    .line 182
    invoke-virtual {v3, v0}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 184
    :cond_e
    return-object v3
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 0
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;

    .line 102
    iput-object p1, p0, Lorg/jpos/bsh/BSHLogListener;->cfg:Lorg/jpos/core/Configuration;

    .line 103
    return-void
.end method
