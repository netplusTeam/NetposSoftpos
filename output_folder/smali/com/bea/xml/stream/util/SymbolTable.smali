.class public Lcom/bea/xml/stream/util/SymbolTable;
.super Ljava/lang/Object;
.source "SymbolTable.java"


# instance fields
.field private depth:I

.field private table:Lcom/bea/xml/stream/util/Stack;

.field private values:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    .line 42
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->values:Ljava/util/Map;

    .line 44
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 10
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/bea/xml/stream/util/SymbolTable;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/SymbolTable;-><init>()V

    .line 149
    .local v0, "st":Lcom/bea/xml/stream/util/SymbolTable;
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->openScope()V

    .line 150
    const-string/jumbo v1, "x"

    const-string v2, "foo"

    invoke-virtual {v0, v1, v2}, Lcom/bea/xml/stream/util/SymbolTable;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v3, "y"

    const-string v4, "bar"

    invoke-virtual {v0, v3, v4}, Lcom/bea/xml/stream/util/SymbolTable;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "1 x:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/util/SymbolTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "1 y:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/util/SymbolTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->openScope()V

    .line 155
    invoke-virtual {v0, v1, v4}, Lcom/bea/xml/stream/util/SymbolTable;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v3, v2}, Lcom/bea/xml/stream/util/SymbolTable;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->openScope()V

    .line 158
    const-string v2, "barbie"

    invoke-virtual {v0, v1, v2}, Lcom/bea/xml/stream/util/SymbolTable;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->openScope()V

    .line 160
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->closeScope()V

    .line 162
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "3 x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/util/SymbolTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->closeScope()V

    .line 164
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "2 x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/util/SymbolTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 165
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "2 y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/util/SymbolTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 166
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->closeScope()V

    .line 168
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/util/SymbolTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/bea/xml/stream/util/SymbolTable;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/SymbolTable;->closeScope()V

    .line 171
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 172
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    .line 48
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->clear()V

    .line 49
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 50
    return-void
.end method

.method public closeScope()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bea/xml/stream/util/Symbol;

    .line 116
    .local v0, "symbol":Lcom/bea/xml/stream/util/Symbol;
    iget v1, v0, Lcom/bea/xml/stream/util/Symbol;->depth:I

    .line 119
    .local v1, "symbolDepth":I
    :goto_0
    iget v2, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v2}, Lcom/bea/xml/stream/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v2}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/bea/xml/stream/util/Symbol;

    .line 123
    iget-object v2, p0, Lcom/bea/xml/stream/util/SymbolTable;->values:Ljava/util/Map;

    iget-object v3, v0, Lcom/bea/xml/stream/util/Symbol;->name:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bea/xml/stream/util/Stack;

    .line 124
    .local v2, "valueStack":Lcom/bea/xml/stream/util/Stack;
    invoke-virtual {v2}, Lcom/bea/xml/stream/util/Stack;->pop()Ljava/lang/Object;

    .line 127
    iget-object v3, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v3}, Lcom/bea/xml/stream/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 128
    iget-object v3, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v3}, Lcom/bea/xml/stream/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/bea/xml/stream/util/Symbol;

    .line 129
    iget v1, v0, Lcom/bea/xml/stream/util/Symbol;->depth:I

    .line 131
    .end local v2    # "valueStack":Lcom/bea/xml/stream/util/Stack;
    goto :goto_0

    .line 132
    :cond_0
    iget v2, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    .line 133
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 83
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bea/xml/stream/util/Stack;

    .line 84
    .local v0, "valueStack":Lcom/bea/xml/stream/util/Stack;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1

    .line 85
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 92
    .local v0, "result":Ljava/util/HashSet;
    iget-object v1, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v1}, Lcom/bea/xml/stream/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 93
    .local v1, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bea/xml/stream/util/Symbol;

    .line 95
    .local v2, "s":Lcom/bea/xml/stream/util/Symbol;
    invoke-virtual {v2}, Lcom/bea/xml/stream/util/Symbol;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {v2}, Lcom/bea/xml/stream/util/Symbol;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "s":Lcom/bea/xml/stream/util/Symbol;
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    return v0
.end method

.method public openScope()V
    .locals 1

    .line 105
    iget v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    .line 106
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    new-instance v1, Lcom/bea/xml/stream/util/Symbol;

    iget v2, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    invoke-direct {v1, p1, p2, v2}, Lcom/bea/xml/stream/util/Symbol;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/bea/xml/stream/util/Stack;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/Stack;-><init>()V

    .line 70
    .local v0, "valueStack":Lcom/bea/xml/stream/util/Stack;
    invoke-virtual {v0, p2}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 71
    iget-object v1, p0, Lcom/bea/xml/stream/util/SymbolTable;->values:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .end local v0    # "valueStack":Lcom/bea/xml/stream/util/Stack;
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bea/xml/stream/util/Stack;

    .line 74
    .restart local v0    # "valueStack":Lcom/bea/xml/stream/util/Stack;
    invoke-virtual {v0, p2}, Lcom/bea/xml/stream/util/Stack;->push(Ljava/lang/Object;)V

    .line 76
    .end local v0    # "valueStack":Lcom/bea/xml/stream/util/Stack;
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->table:Lcom/bea/xml/stream/util/Stack;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 137
    .local v0, "i":Ljava/util/Iterator;
    const-string v1, ""

    .line 138
    .local v1, "retVal":Ljava/lang/String;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bea/xml/stream/util/Symbol;

    .line 140
    .local v2, "symbol":Lcom/bea/xml/stream/util/Symbol;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .end local v2    # "symbol":Lcom/bea/xml/stream/util/Symbol;
    goto :goto_0

    .line 142
    :cond_0
    return-object v1
.end method

.method public withinElement()Z
    .locals 1

    .line 60
    iget v0, p0, Lcom/bea/xml/stream/util/SymbolTable;->depth:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
