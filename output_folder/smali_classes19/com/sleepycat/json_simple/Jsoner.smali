.class public Lcom/sleepycat/json_simple/Jsoner;
.super Ljava/lang/Object;
.source "Jsoner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/json_simple/Jsoner$States;,
        Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;,
        Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method private static deserialize(Ljava/io/Reader;Ljava/util/Set;)Lcom/sleepycat/json_simple/JsonArray;
    .locals 10
    .param p0, "deserializable"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;",
            ">;)",
            "Lcom/sleepycat/json_simple/JsonArray;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/json_simple/JsonException;
        }
    .end annotation

    .line 91
    .local p1, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;>;"
    new-instance v0, Lcom/sleepycat/json_simple/Yylex;

    invoke-direct {v0, p0}, Lcom/sleepycat/json_simple/Yylex;-><init>(Ljava/io/Reader;)V

    .line 94
    .local v0, "lexer":Lcom/sleepycat/json_simple/Yylex;
    const/4 v1, 0x1

    .line 95
    .local v1, "returnCount":I
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 96
    .local v2, "stateStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sleepycat/json_simple/Jsoner$States;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 97
    .local v3, "valueStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Object;>;"
    sget-object v4, Lcom/sleepycat/json_simple/Jsoner$States;->INITIAL:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 100
    :goto_0
    invoke-static {v2}, Lcom/sleepycat/json_simple/Jsoner;->popNextState(Ljava/util/LinkedList;)Lcom/sleepycat/json_simple/Jsoner$States;

    move-result-object v4

    .line 101
    .local v4, "currentState":Lcom/sleepycat/json_simple/Jsoner$States;
    invoke-static {v0}, Lcom/sleepycat/json_simple/Jsoner;->lexNextToken(Lcom/sleepycat/json_simple/Yylex;)Lcom/sleepycat/json_simple/Yytoken;

    move-result-object v5

    .line 102
    .local v5, "token":Lcom/sleepycat/json_simple/Yytoken;
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$2;->$SwitchMap$com$sleepycat$json_simple$Jsoner$States:[I

    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Jsoner$States;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 233
    :pswitch_0
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$2;->$SwitchMap$com$sleepycat$json_simple$Yytoken$Types:[I

    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/json_simple/Yytoken$Types;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_1

    .line 266
    :pswitch_1
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 238
    :pswitch_2
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 239
    goto/16 :goto_1

    .line 257
    :pswitch_3
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 258
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/json_simple/JsonObject;

    .line 259
    .local v7, "parent":Lcom/sleepycat/json_simple/JsonObject;
    new-instance v8, Lcom/sleepycat/json_simple/JsonArray;

    invoke-direct {v8}, Lcom/sleepycat/json_simple/JsonArray;-><init>()V

    .line 260
    .local v8, "array":Lcom/sleepycat/json_simple/JsonArray;
    invoke-virtual {v7, v6, v8}, Lcom/sleepycat/json_simple/JsonObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 262
    sget-object v9, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_ARRAY:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 263
    goto/16 :goto_1

    .line 248
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "parent":Lcom/sleepycat/json_simple/JsonObject;
    .end local v8    # "array":Lcom/sleepycat/json_simple/JsonArray;
    :pswitch_4
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 249
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/json_simple/JsonObject;

    .line 250
    .restart local v7    # "parent":Lcom/sleepycat/json_simple/JsonObject;
    new-instance v8, Lcom/sleepycat/json_simple/JsonObject;

    invoke-direct {v8}, Lcom/sleepycat/json_simple/JsonObject;-><init>()V

    .line 251
    .local v8, "object":Lcom/sleepycat/json_simple/JsonObject;
    invoke-virtual {v7, v6, v8}, Lcom/sleepycat/json_simple/JsonObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 253
    sget-object v9, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_OBJECT:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 254
    goto/16 :goto_1

    .line 242
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "parent":Lcom/sleepycat/json_simple/JsonObject;
    .end local v8    # "object":Lcom/sleepycat/json_simple/JsonObject;
    :pswitch_5
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 243
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sleepycat/json_simple/JsonObject;

    .line 244
    .restart local v7    # "parent":Lcom/sleepycat/json_simple/JsonObject;
    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/sleepycat/json_simple/JsonObject;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    goto/16 :goto_1

    .line 197
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "parent":Lcom/sleepycat/json_simple/JsonObject;
    :pswitch_6
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$2;->$SwitchMap$com$sleepycat$json_simple$Yytoken$Types:[I

    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/json_simple/Yytoken$Types;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sparse-switch v6, :sswitch_data_0

    .line 229
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 219
    :sswitch_0
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v1, :cond_0

    .line 221
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto/16 :goto_1

    .line 224
    :cond_0
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$States;->DONE:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 226
    goto/16 :goto_1

    .line 201
    :sswitch_1
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 202
    goto/16 :goto_1

    .line 205
    :sswitch_2
    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 208
    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 209
    .restart local v6    # "key":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 210
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 211
    sget-object v7, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_ENTRY:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 212
    .end local v6    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 214
    :cond_1
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 152
    :pswitch_7
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$2;->$SwitchMap$com$sleepycat$json_simple$Yytoken$Types:[I

    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/json_simple/Yytoken$Types;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_2

    .line 192
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 183
    :pswitch_8
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-le v6, v1, :cond_2

    .line 184
    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto/16 :goto_1

    .line 187
    :cond_2
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$States;->DONE:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 189
    goto/16 :goto_1

    .line 155
    :pswitch_9
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 156
    goto/16 :goto_1

    .line 174
    :pswitch_a
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/json_simple/JsonArray;

    .line 175
    .local v6, "val":Lcom/sleepycat/json_simple/JsonArray;
    new-instance v7, Lcom/sleepycat/json_simple/JsonArray;

    invoke-direct {v7}, Lcom/sleepycat/json_simple/JsonArray;-><init>()V

    .line 176
    .local v7, "array":Lcom/sleepycat/json_simple/JsonArray;
    invoke-virtual {v6, v7}, Lcom/sleepycat/json_simple/JsonArray;->add(Ljava/lang/Object;)Z

    .line 177
    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 178
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 179
    sget-object v8, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_ARRAY:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 180
    goto/16 :goto_1

    .line 165
    .end local v6    # "val":Lcom/sleepycat/json_simple/JsonArray;
    .end local v7    # "array":Lcom/sleepycat/json_simple/JsonArray;
    :pswitch_b
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/json_simple/JsonArray;

    .line 166
    .restart local v6    # "val":Lcom/sleepycat/json_simple/JsonArray;
    new-instance v7, Lcom/sleepycat/json_simple/JsonObject;

    invoke-direct {v7}, Lcom/sleepycat/json_simple/JsonObject;-><init>()V

    .line 167
    .local v7, "object":Lcom/sleepycat/json_simple/JsonObject;
    invoke-virtual {v6, v7}, Lcom/sleepycat/json_simple/JsonArray;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-virtual {v3, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 169
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 170
    sget-object v8, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_OBJECT:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 171
    goto/16 :goto_1

    .line 159
    .end local v6    # "val":Lcom/sleepycat/json_simple/JsonArray;
    .end local v7    # "object":Lcom/sleepycat/json_simple/JsonObject;
    :pswitch_c
    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sleepycat/json_simple/JsonArray;

    .line 160
    .restart local v6    # "val":Lcom/sleepycat/json_simple/JsonArray;
    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/json_simple/JsonArray;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 162
    goto/16 :goto_1

    .line 150
    .end local v6    # "val":Lcom/sleepycat/json_simple/JsonArray;
    :pswitch_d
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 105
    :pswitch_e
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_CONCATENATED_JSON_VALUES:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/sleepycat/json_simple/Yytoken$Types;->END:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/json_simple/Yytoken$Types;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 107
    goto/16 :goto_1

    .line 110
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 115
    :pswitch_f
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$2;->$SwitchMap$com$sleepycat$json_simple$Yytoken$Types:[I

    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/json_simple/Yytoken$Types;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_3

    .line 145
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 136
    :pswitch_10
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_ARRAYS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 137
    new-instance v6, Lcom/sleepycat/json_simple/JsonArray;

    invoke-direct {v6}, Lcom/sleepycat/json_simple/JsonArray;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 138
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_ARRAY:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 140
    :cond_4
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->DISALLOWED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 127
    :pswitch_11
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_OBJECTS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 128
    new-instance v6, Lcom/sleepycat/json_simple/JsonObject;

    invoke-direct {v6}, Lcom/sleepycat/json_simple/JsonObject;-><init>()V

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 129
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$States;->PARSING_OBJECT:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 131
    :cond_5
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->DISALLOWED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 118
    :pswitch_12
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_DATA:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 119
    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 120
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$States;->DONE:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 122
    :cond_6
    new-instance v6, Lcom/sleepycat/json_simple/JsonException;

    invoke-virtual {v0}, Lcom/sleepycat/json_simple/Yylex;->getPosition()I

    move-result v7

    sget-object v8, Lcom/sleepycat/json_simple/JsonException$Problems;->DISALLOWED_TOKEN:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v6, v7, v8, v5}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v6

    .line 273
    :cond_7
    :goto_1
    sget-object v6, Lcom/sleepycat/json_simple/Jsoner$States;->DONE:Lcom/sleepycat/json_simple/Jsoner$States;

    invoke-virtual {v6, v4}, Lcom/sleepycat/json_simple/Jsoner$States;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    sget-object v6, Lcom/sleepycat/json_simple/Yytoken$Types;->END:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-virtual {v5}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/json_simple/Yytoken$Types;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 274
    new-instance v6, Lcom/sleepycat/json_simple/JsonArray;

    invoke-direct {v6, v3}, Lcom/sleepycat/json_simple/JsonArray;-><init>(Ljava/util/Collection;)V

    return-object v6

    .line 273
    :cond_8
    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_7
        :pswitch_6
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch
.end method

.method public static deserialize(Ljava/lang/String;Lcom/sleepycat/json_simple/JsonArray;)Lcom/sleepycat/json_simple/JsonArray;
    .locals 3
    .param p0, "deserializable"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Lcom/sleepycat/json_simple/JsonArray;

    .line 311
    const/4 v0, 0x0

    .line 314
    .local v0, "readable":Ljava/io/StringReader;
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 315
    sget-object v1, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_ARRAYS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/json_simple/Jsoner;->deserialize(Ljava/io/Reader;Ljava/util/Set;)Lcom/sleepycat/json_simple/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/json_simple/JsonArray;->getCollection(I)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/json_simple/JsonArray;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/json_simple/JsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    .local v1, "returnable":Lcom/sleepycat/json_simple/JsonArray;
    nop

    .line 321
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    goto :goto_2

    .line 320
    .end local v1    # "returnable":Lcom/sleepycat/json_simple/JsonArray;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 321
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    :cond_0
    throw v1

    .line 316
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 318
    .local v1, "caught":Ljava/lang/Exception;
    :goto_1
    move-object v1, p1

    .line 320
    .local v1, "returnable":Lcom/sleepycat/json_simple/JsonArray;
    if-eqz v0, :cond_1

    .line 321
    goto :goto_0

    .line 324
    :cond_1
    :goto_2
    return-object v1
.end method

.method public static deserialize(Ljava/lang/String;Lcom/sleepycat/json_simple/JsonObject;)Lcom/sleepycat/json_simple/JsonObject;
    .locals 3
    .param p0, "deserializable"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Lcom/sleepycat/json_simple/JsonObject;

    .line 335
    const/4 v0, 0x0

    .line 338
    .local v0, "readable":Ljava/io/StringReader;
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 339
    sget-object v1, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_OBJECTS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sleepycat/json_simple/Jsoner;->deserialize(Ljava/io/Reader;Ljava/util/Set;)Lcom/sleepycat/json_simple/JsonArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sleepycat/json_simple/JsonArray;->getMap(I)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/json_simple/JsonObject;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/json_simple/JsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    .local v1, "returnable":Lcom/sleepycat/json_simple/JsonObject;
    nop

    .line 345
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    goto :goto_2

    .line 344
    .end local v1    # "returnable":Lcom/sleepycat/json_simple/JsonObject;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 345
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    :cond_0
    throw v1

    .line 340
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 342
    .local v1, "caught":Ljava/lang/Exception;
    :goto_1
    move-object v1, p1

    .line 344
    .local v1, "returnable":Lcom/sleepycat/json_simple/JsonObject;
    if-eqz v0, :cond_1

    .line 345
    goto :goto_0

    .line 348
    :cond_1
    :goto_2
    return-object v1
.end method

.method public static deserialize(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 3
    .param p0, "readableDeserializable"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/json_simple/JsonException;
        }
    .end annotation

    .line 80
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_ARRAYS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    sget-object v1, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_OBJECTS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    sget-object v2, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_DATA:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/json_simple/Jsoner;->deserialize(Ljava/io/Reader;Ljava/util/Set;)Lcom/sleepycat/json_simple/JsonArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sleepycat/json_simple/JsonArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static deserialize(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "deserializable"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/json_simple/JsonException;
        }
    .end annotation

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, "readableDeserializable":Ljava/io/StringReader;
    :try_start_0
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 289
    invoke-static {v0}, Lcom/sleepycat/json_simple/Jsoner;->deserialize(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .local v1, "returnable":Ljava/lang/Object;
    nop

    .line 297
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    goto :goto_1

    .line 296
    .end local v1    # "returnable":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    :cond_0
    throw v1

    .line 290
    :catch_0
    move-exception v1

    .line 294
    .local v1, "caught":Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .line 296
    .local v1, "returnable":Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 297
    goto :goto_0

    .line 300
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static deserializeMany(Ljava/io/Reader;)Lcom/sleepycat/json_simple/JsonArray;
    .locals 4
    .param p0, "deserializable"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/json_simple/JsonException;
        }
    .end annotation

    .line 372
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_ARRAYS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    sget-object v1, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_OBJECTS:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    sget-object v2, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_JSON_DATA:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    sget-object v3, Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;->ALLOW_CONCATENATED_JSON_VALUES:Lcom/sleepycat/json_simple/Jsoner$DeserializationOptions;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/sleepycat/json_simple/Jsoner;->deserialize(Ljava/io/Reader;Ljava/util/Set;)Lcom/sleepycat/json_simple/JsonArray;

    move-result-object v0

    return-object v0
.end method

.method public static escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "escapable"    # Ljava/lang/String;

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 385
    .local v1, "characters":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 386
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 387
    .local v3, "character":C
    sparse-switch v3, :sswitch_data_0

    .line 415
    if-ltz v3, :cond_0

    const/16 v4, 0x1f

    if-le v3, v4, :cond_2

    goto :goto_1

    .line 392
    :sswitch_0
    const-string v4, "\\\\"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    goto :goto_3

    .line 410
    :sswitch_1
    const-string v4, "\\/"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    goto :goto_3

    .line 389
    :sswitch_2
    const-string v4, "\\\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    goto :goto_3

    .line 404
    :sswitch_3
    const-string v4, "\\r"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    goto :goto_3

    .line 398
    :sswitch_4
    const-string v4, "\\f"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    goto :goto_3

    .line 401
    :sswitch_5
    const-string v4, "\\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    goto :goto_3

    .line 407
    :sswitch_6
    const-string v4, "\\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    goto :goto_3

    .line 395
    :sswitch_7
    const-string v4, "\\b"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    goto :goto_3

    .line 415
    :cond_0
    :goto_1
    const/16 v4, 0x7f

    if-lt v3, v4, :cond_1

    const/16 v4, 0x9f

    if-le v3, v4, :cond_2

    :cond_1
    const/16 v4, 0x2000

    if-lt v3, v4, :cond_4

    const/16 v4, 0x20ff

    if-gt v3, v4, :cond_4

    .line 416
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "characterHexCode":Ljava/lang/String;
    const-string v5, "\\u"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    rsub-int/lit8 v6, v6, 0x4

    if-ge v5, v6, :cond_3

    .line 419
    const-string v6, "0"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 421
    .end local v5    # "k":I
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    .end local v4    # "characterHexCode":Ljava/lang/String;
    goto :goto_3

    .line 424
    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    .end local v3    # "character":C
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v2    # "i":I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_7
        0x9 -> :sswitch_6
        0xa -> :sswitch_5
        0xc -> :sswitch_4
        0xd -> :sswitch_3
        0x22 -> :sswitch_2
        0x2f -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static lexNextToken(Lcom/sleepycat/json_simple/Yylex;)Lcom/sleepycat/json_simple/Yytoken;
    .locals 4
    .param p0, "lexer"    # Lcom/sleepycat/json_simple/Yylex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/json_simple/JsonException;
        }
    .end annotation

    .line 439
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/json_simple/Yylex;->yylex()Lcom/sleepycat/json_simple/Yytoken;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .local v0, "returnable":Lcom/sleepycat/json_simple/Yytoken;
    nop

    .line 443
    if-nez v0, :cond_0

    .line 445
    new-instance v1, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v2, Lcom/sleepycat/json_simple/Yytoken$Types;->END:Lcom/sleepycat/json_simple/Yytoken$Types;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    move-object v0, v1

    .line 447
    :cond_0
    return-object v0

    .line 440
    .end local v0    # "returnable":Lcom/sleepycat/json_simple/Yytoken;
    :catch_0
    move-exception v0

    .line 441
    .local v0, "caught":Ljava/io/IOException;
    new-instance v1, Lcom/sleepycat/json_simple/JsonException;

    const/4 v2, -0x1

    sget-object v3, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v1
.end method

.method public static mintJsonKey(Ljava/lang/String;Ljava/lang/Object;)Lcom/sleepycat/json_simple/JsonKey;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 456
    new-instance v0, Lcom/sleepycat/json_simple/Jsoner$1;

    invoke-direct {v0, p0, p1}, Lcom/sleepycat/json_simple/Jsoner$1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method private static popNextState(Ljava/util/LinkedList;)Lcom/sleepycat/json_simple/Jsoner$States;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/sleepycat/json_simple/Jsoner$States;",
            ">;)",
            "Lcom/sleepycat/json_simple/Jsoner$States;"
        }
    .end annotation

    .line 473
    .local p0, "stateStack":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/sleepycat/json_simple/Jsoner$States;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 474
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/json_simple/Jsoner$States;

    return-object v0

    .line 476
    :cond_0
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$States;->PARSED_ERROR:Lcom/sleepycat/json_simple/Jsoner$States;

    return-object v0
.end method

.method public static prettyPrint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "printable"    # Ljava/lang/String;

    .line 486
    const-string v0, "\t"

    invoke-static {p0, v0}, Lcom/sleepycat/json_simple/Jsoner;->prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static prettyPrint(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "printable"    # Ljava/lang/String;
    .param p1, "spaces"    # I

    .line 499
    const/16 v0, 0xa

    if-gt p1, v0, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_1

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 503
    .local v0, "indentation":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 504
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 506
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sleepycat/json_simple/Jsoner;->prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 500
    .end local v0    # "indentation":Ljava/lang/StringBuilder;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Indentation with spaces must be between 2 and 10."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static prettyPrint(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "printable"    # Ljava/lang/String;
    .param p1, "indentation"    # Ljava/lang/String;

    .line 516
    const-string v0, "\""

    new-instance v1, Lcom/sleepycat/json_simple/Yylex;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/json_simple/Yylex;-><init>(Ljava/io/Reader;)V

    .line 518
    .local v1, "lexer":Lcom/sleepycat/json_simple/Yylex;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v2, "returnable":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 522
    .local v3, "level":I
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/sleepycat/json_simple/Jsoner;->lexNextToken(Lcom/sleepycat/json_simple/Yylex;)Lcom/sleepycat/json_simple/Yytoken;

    move-result-object v4

    .line 523
    .local v4, "lexed":Lcom/sleepycat/json_simple/Yytoken;
    sget-object v5, Lcom/sleepycat/json_simple/Jsoner$2;->$SwitchMap$com$sleepycat$json_simple$Yytoken$Types:[I

    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/json_simple/Yytoken$Types;->ordinal()I

    move-result v6

    aget v5, v5, v6
    :try_end_0
    .catch Lcom/sleepycat/json_simple/JsonException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "\n"

    packed-switch v5, :pswitch_data_0

    .line 555
    :try_start_1
    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    .line 535
    :pswitch_0
    goto :goto_4

    .line 525
    :pswitch_1
    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    goto :goto_4

    .line 547
    :pswitch_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    add-int/lit8 v3, v3, -0x1

    .line 549
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 550
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 552
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    goto :goto_4

    .line 528
    :pswitch_3
    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 531
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 533
    .end local v5    # "i":I
    :cond_2
    goto :goto_4

    .line 538
    :pswitch_4
    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    add-int/lit8 v3, v3, 0x1

    .line 541
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    if-ge v5, v3, :cond_3

    .line 542
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 541
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 544
    .end local v5    # "i":I
    :cond_3
    goto :goto_4

    .line 555
    :goto_3
    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 556
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/sleepycat/json_simple/Jsoner;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 560
    :cond_4
    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 564
    :goto_4
    invoke-virtual {v4}, Lcom/sleepycat/json_simple/Yytoken;->getType()Lcom/sleepycat/json_simple/Yytoken$Types;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/json_simple/Yytoken$Types;->END:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-virtual {v5, v6}, Lcom/sleepycat/json_simple/Yytoken$Types;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catch Lcom/sleepycat/json_simple/JsonException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_0

    .line 568
    nop

    .line 569
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 565
    .end local v4    # "lexed":Lcom/sleepycat/json_simple/Yytoken;
    :catch_0
    move-exception v0

    .line 567
    .local v0, "caught":Lcom/sleepycat/json_simple/JsonException;
    const/4 v4, 0x0

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static serialize(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "jsonSerializable"    # Ljava/lang/Object;

    .line 579
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 581
    .local v0, "writableDestination":Ljava/io/StringWriter;
    :try_start_0
    invoke-static {p0, v0}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    goto :goto_0

    .line 582
    :catch_0
    move-exception v1

    .line 585
    :goto_0
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static serialize(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1
    .param p0, "jsonSerializable"    # Ljava/lang/Object;
    .param p1, "writableDestination"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 595
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->ALLOW_JSONABLES:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 596
    return-void
.end method

.method private static serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V
    .locals 7
    .param p0, "jsonSerializable"    # Ljava/lang/Object;
    .param p1, "writableDestination"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/io/Writer;",
            "Ljava/util/Set<",
            "Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 606
    .local p2, "flags":Ljava/util/Set;, "Ljava/util/Set<Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;>;"
    const-string v0, "null"

    if-nez p0, :cond_0

    .line 608
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 609
    :cond_0
    instance-of v1, p0, Lcom/sleepycat/json_simple/Jsonable;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->ALLOW_JSONABLES:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 611
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/json_simple/Jsonable;

    invoke-interface {v0}, Lcom/sleepycat/json_simple/Jsonable;->toJson()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 612
    :cond_1
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 614
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 615
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/sleepycat/json_simple/Jsoner;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 616
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    goto/16 :goto_18

    .line 617
    :cond_2
    instance-of v1, p0, Ljava/lang/Character;

    if-eqz v1, :cond_3

    .line 620
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/json_simple/Jsoner;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 621
    :cond_3
    instance-of v1, p0, Ljava/lang/Double;

    if-eqz v1, :cond_6

    .line 622
    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_5

    move-object v1, p0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    .line 626
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 624
    :cond_5
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 628
    :cond_6
    instance-of v1, p0, Ljava/lang/Float;

    if-eqz v1, :cond_9

    .line 629
    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v1

    if-nez v1, :cond_8

    move-object v1, p0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_1

    .line 633
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 631
    :cond_8
    :goto_1
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 635
    :cond_9
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_a

    .line 636
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 637
    :cond_a
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_b

    .line 638
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 639
    :cond_b
    instance-of v0, p0, Ljava/util/Map;

    const/16 v1, 0x2c

    if-eqz v0, :cond_e

    .line 641
    const/4 v0, 0x1

    .line 643
    .local v0, "isFirstEntry":Z
    move-object v2, p0

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 644
    .local v2, "entries":Ljava/util/Iterator;
    const/16 v3, 0x7b

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 645
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 646
    if-eqz v0, :cond_c

    .line 647
    const/4 v0, 0x0

    goto :goto_3

    .line 649
    :cond_c
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 652
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 653
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 654
    const/16 v4, 0x3a

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 655
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 656
    .end local v3    # "entry":Ljava/util/Map$Entry;
    goto :goto_2

    .line 657
    :cond_d
    const/16 v1, 0x7d

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 658
    .end local v0    # "isFirstEntry":Z
    .end local v2    # "entries":Ljava/util/Iterator;
    goto/16 :goto_18

    :cond_e
    instance-of v0, p0, Ljava/util/Collection;

    const/16 v2, 0x5d

    const/16 v3, 0x5b

    if-eqz v0, :cond_11

    .line 660
    const/4 v0, 0x1

    .line 662
    .local v0, "isFirstElement":Z
    move-object v4, p0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 663
    .local v4, "elements":Ljava/util/Iterator;
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 664
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 665
    if-eqz v0, :cond_f

    .line 666
    const/4 v0, 0x0

    goto :goto_5

    .line 668
    :cond_f
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 670
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_4

    .line 672
    :cond_10
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 673
    .end local v0    # "isFirstElement":Z
    .end local v4    # "elements":Ljava/util/Iterator;
    goto/16 :goto_18

    :cond_11
    instance-of v0, p0, [B

    if-eqz v0, :cond_14

    .line 675
    move-object v0, p0

    check-cast v0, [B

    check-cast v0, [B

    .line 676
    .local v0, "writableArray":[B
    array-length v4, v0

    .line 677
    .local v4, "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 678
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v4, :cond_13

    .line 679
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_12

    .line 680
    aget-byte v5, v0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_7

    .line 682
    :cond_12
    aget-byte v5, v0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 683
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 678
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 686
    .end local v3    # "i":I
    :cond_13
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 687
    .end local v0    # "writableArray":[B
    .end local v4    # "numberOfElements":I
    goto/16 :goto_18

    :cond_14
    instance-of v0, p0, [S

    if-eqz v0, :cond_17

    .line 689
    move-object v0, p0

    check-cast v0, [S

    check-cast v0, [S

    .line 690
    .local v0, "writableArray":[S
    array-length v4, v0

    .line 691
    .restart local v4    # "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 692
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_8
    if-ge v3, v4, :cond_16

    .line 693
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_15

    .line 694
    aget-short v5, v0, v3

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_9

    .line 696
    :cond_15
    aget-short v5, v0, v3

    invoke-static {v5}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 697
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 692
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 700
    .end local v3    # "i":I
    :cond_16
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 701
    .end local v0    # "writableArray":[S
    .end local v4    # "numberOfElements":I
    goto/16 :goto_18

    :cond_17
    instance-of v0, p0, [I

    if-eqz v0, :cond_1a

    .line 703
    move-object v0, p0

    check-cast v0, [I

    check-cast v0, [I

    .line 704
    .local v0, "writableArray":[I
    array-length v4, v0

    .line 705
    .restart local v4    # "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 706
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_a
    if-ge v3, v4, :cond_19

    .line 707
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_18

    .line 708
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_b

    .line 710
    :cond_18
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 711
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 706
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 714
    .end local v3    # "i":I
    :cond_19
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 715
    .end local v0    # "writableArray":[I
    .end local v4    # "numberOfElements":I
    goto/16 :goto_18

    :cond_1a
    instance-of v0, p0, [J

    if-eqz v0, :cond_1d

    .line 717
    move-object v0, p0

    check-cast v0, [J

    check-cast v0, [J

    .line 718
    .local v0, "writableArray":[J
    array-length v4, v0

    .line 719
    .restart local v4    # "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 720
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_c
    if-ge v3, v4, :cond_1c

    .line 721
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_1b

    .line 722
    aget-wide v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_d

    .line 724
    :cond_1b
    aget-wide v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 725
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 720
    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 728
    .end local v3    # "i":I
    :cond_1c
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 729
    .end local v0    # "writableArray":[J
    .end local v4    # "numberOfElements":I
    goto/16 :goto_18

    :cond_1d
    instance-of v0, p0, [F

    if-eqz v0, :cond_20

    .line 731
    move-object v0, p0

    check-cast v0, [F

    check-cast v0, [F

    .line 732
    .local v0, "writableArray":[F
    array-length v4, v0

    .line 733
    .restart local v4    # "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 734
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_e
    if-ge v3, v4, :cond_1f

    .line 735
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_1e

    .line 736
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_f

    .line 738
    :cond_1e
    aget v5, v0, v3

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 739
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 734
    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 742
    .end local v3    # "i":I
    :cond_1f
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 743
    .end local v0    # "writableArray":[F
    .end local v4    # "numberOfElements":I
    goto/16 :goto_18

    :cond_20
    instance-of v0, p0, [D

    if-eqz v0, :cond_23

    .line 745
    move-object v0, p0

    check-cast v0, [D

    check-cast v0, [D

    .line 746
    .local v0, "writableArray":[D
    array-length v4, v0

    .line 747
    .restart local v4    # "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 748
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_10
    if-ge v3, v4, :cond_22

    .line 749
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_21

    .line 750
    aget-wide v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_11

    .line 752
    :cond_21
    aget-wide v5, v0, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 753
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 748
    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 756
    .end local v3    # "i":I
    :cond_22
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 757
    .end local v0    # "writableArray":[D
    .end local v4    # "numberOfElements":I
    goto/16 :goto_18

    :cond_23
    instance-of v0, p0, [Z

    if-eqz v0, :cond_26

    .line 759
    move-object v0, p0

    check-cast v0, [Z

    check-cast v0, [Z

    .line 760
    .local v0, "writableArray":[Z
    array-length v4, v0

    .line 761
    .restart local v4    # "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 762
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_12
    if-ge v3, v4, :cond_25

    .line 763
    add-int/lit8 v5, v4, -0x1

    if-ne v3, v5, :cond_24

    .line 764
    aget-boolean v5, v0, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_13

    .line 766
    :cond_24
    aget-boolean v5, v0, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v5, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 767
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 762
    :goto_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 770
    .end local v3    # "i":I
    :cond_25
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 771
    .end local v0    # "writableArray":[Z
    .end local v4    # "numberOfElements":I
    goto/16 :goto_18

    :cond_26
    instance-of v0, p0, [C

    if-eqz v0, :cond_29

    .line 773
    move-object v0, p0

    check-cast v0, [C

    check-cast v0, [C

    .line 774
    .local v0, "writableArray":[C
    array-length v1, v0

    .line 775
    .local v1, "numberOfElements":I
    const-string v2, "[\""

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 776
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_28

    .line 777
    add-int/lit8 v3, v1, -0x1

    if-ne v2, v3, :cond_27

    .line 778
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_15

    .line 780
    :cond_27
    aget-char v3, v0, v2

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 781
    const-string v3, "\",\""

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 776
    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 784
    .end local v2    # "i":I
    :cond_28
    const-string v2, "\"]"

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 785
    .end local v0    # "writableArray":[C
    .end local v1    # "numberOfElements":I
    goto :goto_18

    :cond_29
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_2c

    .line 787
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 788
    .local v0, "writableArray":[Ljava/lang/Object;
    array-length v1, v0

    .line 789
    .restart local v1    # "numberOfElements":I
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    .line 790
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_16
    if-ge v3, v1, :cond_2b

    .line 791
    add-int/lit8 v4, v1, -0x1

    if-ne v3, v4, :cond_2a

    .line 792
    aget-object v4, v0, v3

    invoke-static {v4, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    goto :goto_17

    .line 794
    :cond_2a
    aget-object v4, v0, v3

    invoke-static {v4, p1, p2}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 795
    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 790
    :goto_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 798
    .end local v3    # "i":I
    :cond_2b
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    .line 799
    .end local v0    # "writableArray":[Ljava/lang/Object;
    .end local v1    # "numberOfElements":I
    goto :goto_18

    .line 801
    :cond_2c
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->ALLOW_INVALIDS:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 803
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 809
    :goto_18
    return-void

    .line 806
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  that isn\'t JSON serializable.\n  Try:\n    1) Implementing the Jsonable interface for the object to return valid JSON. If it already does it probably has a bug.\n    2) If you cannot edit the source of the object or couple it with this library consider wrapping it in a class that does implement the Jsonable interface.\n    3) Otherwise convert it to a boolean, null, number, JsonArray, JsonObject, or String value before serializing it.\n    4) If you feel it should have serialized you could use a more tolerant serialization for debugging purposes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serializeCarelessly(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 2
    .param p0, "jsonSerializable"    # Ljava/lang/Object;
    .param p1, "writableDestination"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 820
    sget-object v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->ALLOW_JSONABLES:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    sget-object v1, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;->ALLOW_INVALIDS:Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 821
    return-void
.end method

.method public static serializeStrictly(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1
    .param p0, "jsonSerializable"    # Ljava/lang/Object;
    .param p1, "writableDestination"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 829
    const-class v0, Lcom/sleepycat/json_simple/Jsoner$SerializationOptions;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/sleepycat/json_simple/Jsoner;->serialize(Ljava/lang/Object;Ljava/io/Writer;Ljava/util/Set;)V

    .line 830
    return-void
.end method
