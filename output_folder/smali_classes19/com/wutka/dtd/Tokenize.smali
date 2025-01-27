.class Lcom/wutka/dtd/Tokenize;
.super Ljava/lang/Object;
.source "Tokenize.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dumpAttribute(Lcom/wutka/dtd/DTDAttribute;)V
    .locals 7
    .param p0, "attr"    # Lcom/wutka/dtd/DTDAttribute;

    .line 213
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 216
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v1, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 217
    goto :goto_2

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Lcom/wutka/dtd/DTDEnumeration;

    const-string v1, ","

    const-string v3, ")"

    if-eqz v0, :cond_3

    .line 220
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    check-cast v0, Lcom/wutka/dtd/DTDEnumeration;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDEnumeration;->getItems()[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "items":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 225
    if-lez v4, :cond_1

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 226
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 223
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 228
    .end local v4    # "i":I
    :cond_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 229
    .end local v0    # "items":[Ljava/lang/String;
    goto :goto_2

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    instance-of v0, v0, Lcom/wutka/dtd/DTDNotationList;

    if-eqz v0, :cond_6

    .line 232
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "Notation ("

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->type:Ljava/lang/Object;

    check-cast v0, Lcom/wutka/dtd/DTDNotationList;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDNotationList;->getItems()[Ljava/lang/String;

    move-result-object v0

    .line 235
    .restart local v0    # "items":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_5

    .line 237
    if-lez v4, :cond_4

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 238
    :cond_4
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v6, v0, v4

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 240
    .end local v4    # "i":I
    :cond_5
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 243
    .end local v0    # "items":[Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    if-eqz v0, :cond_7

    .line 245
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/wutka/dtd/DTDAttribute;->decl:Lcom/wutka/dtd/DTDDecl;

    iget-object v3, v3, Lcom/wutka/dtd/DTDDecl;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 248
    :cond_7
    iget-object v0, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 250
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/wutka/dtd/DTDAttribute;->defaultValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 253
    :cond_8
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 254
    return-void
.end method

.method public static dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V
    .locals 5
    .param p0, "item"    # Lcom/wutka/dtd/DTDItem;

    .line 142
    if-nez p0, :cond_0

    return-void

    .line 144
    :cond_0
    instance-of v0, p0, Lcom/wutka/dtd/DTDAny;

    if-eqz v0, :cond_1

    .line 146
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Any"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 147
    goto/16 :goto_3

    .line 148
    :cond_1
    instance-of v0, p0, Lcom/wutka/dtd/DTDEmpty;

    if-eqz v0, :cond_2

    .line 150
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Empty"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 151
    goto/16 :goto_3

    .line 152
    :cond_2
    instance-of v0, p0, Lcom/wutka/dtd/DTDName;

    if-eqz v0, :cond_3

    .line 154
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object v1, p0

    check-cast v1, Lcom/wutka/dtd/DTDName;

    iget-object v1, v1, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 155
    goto/16 :goto_3

    .line 156
    :cond_3
    instance-of v0, p0, Lcom/wutka/dtd/DTDChoice;

    const-string v1, ")"

    const-string v2, "("

    if-eqz v0, :cond_6

    .line 158
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 159
    move-object v0, p0

    check-cast v0, Lcom/wutka/dtd/DTDChoice;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDChoice;->getItems()[Lcom/wutka/dtd/DTDItem;

    move-result-object v0

    .line 161
    .local v0, "items":[Lcom/wutka/dtd/DTDItem;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_5

    .line 163
    if-lez v2, :cond_4

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 164
    :cond_4
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 161
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 166
    .end local v2    # "i":I
    :cond_5
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 167
    .end local v0    # "items":[Lcom/wutka/dtd/DTDItem;
    goto :goto_3

    .line 168
    :cond_6
    instance-of v0, p0, Lcom/wutka/dtd/DTDSequence;

    const-string v3, ","

    if-eqz v0, :cond_9

    .line 170
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 171
    move-object v0, p0

    check-cast v0, Lcom/wutka/dtd/DTDSequence;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDSequence;->getItems()[Lcom/wutka/dtd/DTDItem;

    move-result-object v0

    .line 173
    .restart local v0    # "items":[Lcom/wutka/dtd/DTDItem;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v4, v0

    if-ge v2, v4, :cond_8

    .line 175
    if-lez v2, :cond_7

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 176
    :cond_7
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 178
    .end local v2    # "i":I
    :cond_8
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 179
    .end local v0    # "items":[Lcom/wutka/dtd/DTDItem;
    goto :goto_3

    .line 180
    :cond_9
    instance-of v0, p0, Lcom/wutka/dtd/DTDMixed;

    if-eqz v0, :cond_c

    .line 182
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 183
    move-object v0, p0

    check-cast v0, Lcom/wutka/dtd/DTDMixed;

    invoke-virtual {v0}, Lcom/wutka/dtd/DTDMixed;->getItems()[Lcom/wutka/dtd/DTDItem;

    move-result-object v0

    .line 185
    .restart local v0    # "items":[Lcom/wutka/dtd/DTDItem;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v4, v0

    if-ge v2, v4, :cond_b

    .line 187
    if-lez v2, :cond_a

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 188
    :cond_a
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 190
    .end local v2    # "i":I
    :cond_b
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 191
    .end local v0    # "items":[Lcom/wutka/dtd/DTDItem;
    goto :goto_3

    .line 192
    :cond_c
    instance-of v0, p0, Lcom/wutka/dtd/DTDPCData;

    if-eqz v0, :cond_d

    .line 194
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "#PCDATA"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 197
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->OPTIONAL:Lcom/wutka/dtd/DTDCardinal;

    if-ne v0, v1, :cond_e

    .line 199
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 200
    goto :goto_4

    .line 201
    :cond_e
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ZEROMANY:Lcom/wutka/dtd/DTDCardinal;

    if-ne v0, v1, :cond_f

    .line 203
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 204
    goto :goto_4

    .line 205
    :cond_f
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    sget-object v1, Lcom/wutka/dtd/DTDCardinal;->ONEMANY:Lcom/wutka/dtd/DTDCardinal;

    if-ne v0, v1, :cond_10

    .line 207
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 209
    :cond_10
    :goto_4
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 11
    .param p0, "args"    # [Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    .line 22
    .local v0, "parser":Lcom/wutka/dtd/DTDParser;
    const/4 v1, 0x0

    :try_start_0
    aget-object v2, p0, v1

    const-string v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_0

    .line 24
    new-instance v2, Lcom/wutka/dtd/DTDParser;

    new-instance v4, Ljava/net/URL;

    aget-object v1, p0, v1

    invoke-direct {v4, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v3}, Lcom/wutka/dtd/DTDParser;-><init>(Ljava/net/URL;Z)V

    move-object v0, v2

    .line 25
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Lcom/wutka/dtd/DTDParser;

    new-instance v4, Ljava/io/File;

    aget-object v1, p0, v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4, v3}, Lcom/wutka/dtd/DTDParser;-><init>(Ljava/io/File;Z)V

    move-object v0, v2

    .line 32
    :goto_0
    invoke-virtual {v0, v3}, Lcom/wutka/dtd/DTDParser;->parse(Z)Lcom/wutka/dtd/DTD;

    move-result-object v1

    .line 34
    .local v1, "dtd":Lcom/wutka/dtd/DTD;
    iget-object v2, v1, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    if-eqz v2, :cond_1

    .line 36
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Root element is probably: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v4, v1, Lcom/wutka/dtd/DTD;->rootElement:Lcom/wutka/dtd/DTDElement;

    iget-object v4, v4, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    :cond_1
    iget-object v2, v1, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 42
    .local v2, "e":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 44
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wutka/dtd/DTDElement;

    .line 46
    .local v3, "elem":Lcom/wutka/dtd/DTDElement;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Element: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v3, Lcom/wutka/dtd/DTDElement;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "   Content: "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 48
    iget-object v4, v3, Lcom/wutka/dtd/DTDElement;->content:Lcom/wutka/dtd/DTDItem;

    invoke-static {v4}, Lcom/wutka/dtd/Tokenize;->dumpDTDItem(Lcom/wutka/dtd/DTDItem;)V

    .line 49
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 51
    iget-object v4, v3, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 53
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "   Attributes: "

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    iget-object v4, v3, Lcom/wutka/dtd/DTDElement;->attributes:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 55
    .local v4, "attrs":Ljava/util/Enumeration;
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 57
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "        "

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 58
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/wutka/dtd/DTDAttribute;

    .line 59
    .local v5, "attr":Lcom/wutka/dtd/DTDAttribute;
    invoke-static {v5}, Lcom/wutka/dtd/Tokenize;->dumpAttribute(Lcom/wutka/dtd/DTDAttribute;)V

    .line 60
    .end local v5    # "attr":Lcom/wutka/dtd/DTDAttribute;
    goto :goto_2

    .line 61
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    .line 63
    .end local v3    # "elem":Lcom/wutka/dtd/DTDElement;
    .end local v4    # "attrs":Ljava/util/Enumeration;
    :cond_3
    goto :goto_1

    .line 65
    :cond_4
    iget-object v3, v1, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move-object v2, v3

    .line 67
    :goto_3
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, " "

    const-string v5, "    Public: "

    const-string v6, "    System: "

    if-eqz v3, :cond_a

    .line 69
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wutka/dtd/DTDEntity;

    .line 71
    .local v3, "entity":Lcom/wutka/dtd/DTDEntity;
    iget-boolean v7, v3, Lcom/wutka/dtd/DTDEntity;->isParsed:Z

    if-eqz v7, :cond_5

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Parsed "

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 73
    :cond_5
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Entity: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v3, Lcom/wutka/dtd/DTDEntity;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 75
    iget-object v7, v3, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    if-eqz v7, :cond_6

    .line 77
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "    Value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v3, Lcom/wutka/dtd/DTDEntity;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    :cond_6
    iget-object v7, v3, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v7, :cond_8

    .line 82
    iget-object v7, v3, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    instance-of v7, v7, Lcom/wutka/dtd/DTDSystem;

    if-eqz v7, :cond_7

    .line 84
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v3, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v6, v6, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 86
    goto :goto_4

    .line 89
    :cond_7
    iget-object v6, v3, Lcom/wutka/dtd/DTDEntity;->externalID:Lcom/wutka/dtd/DTDExternalID;

    check-cast v6, Lcom/wutka/dtd/DTDPublic;

    .line 91
    .local v6, "pub":Lcom/wutka/dtd/DTDPublic;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v8, v6, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, v6, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 96
    .end local v6    # "pub":Lcom/wutka/dtd/DTDPublic;
    :cond_8
    :goto_4
    iget-object v4, v3, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 98
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "    NDATA "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, v3, Lcom/wutka/dtd/DTDEntity;->ndata:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 100
    .end local v3    # "entity":Lcom/wutka/dtd/DTDEntity;
    :cond_9
    goto/16 :goto_3

    .line 101
    :cond_a
    iget-object v3, v1, Lcom/wutka/dtd/DTD;->notations:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    move-object v2, v3

    .line 103
    :goto_5
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 105
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wutka/dtd/DTDNotation;

    .line 107
    .local v3, "notation":Lcom/wutka/dtd/DTDNotation;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Notation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v3, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 109
    iget-object v7, v3, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v7, :cond_d

    .line 111
    iget-object v7, v3, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    instance-of v7, v7, Lcom/wutka/dtd/DTDSystem;

    if-eqz v7, :cond_b

    .line 113
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    iget-object v9, v3, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    iget-object v9, v9, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    goto :goto_6

    .line 118
    :cond_b
    iget-object v7, v3, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    check-cast v7, Lcom/wutka/dtd/DTDPublic;

    .line 120
    .local v7, "pub":Lcom/wutka/dtd/DTDPublic;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    iget-object v10, v7, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 122
    iget-object v8, v7, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    if-eqz v8, :cond_c

    .line 124
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget-object v9, v7, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    goto :goto_6

    .line 128
    :cond_c
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v8}, Ljava/io/PrintStream;->println()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 132
    .end local v3    # "notation":Lcom/wutka/dtd/DTDNotation;
    .end local v7    # "pub":Lcom/wutka/dtd/DTDPublic;
    :cond_d
    :goto_6
    goto :goto_5

    .line 137
    .end local v0    # "parser":Lcom/wutka/dtd/DTDParser;
    .end local v1    # "dtd":Lcom/wutka/dtd/DTD;
    .end local v2    # "e":Ljava/util/Enumeration;
    :cond_e
    goto :goto_7

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "exc":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintStream;)V

    .line 138
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_7
    return-void
.end method
