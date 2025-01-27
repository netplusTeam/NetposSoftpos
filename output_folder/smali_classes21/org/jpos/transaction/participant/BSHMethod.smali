.class public Lorg/jpos/transaction/participant/BSHMethod;
.super Ljava/lang/Object;
.source "BSHMethod.java"


# instance fields
.field private bshData:Ljava/lang/String;

.field private source:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "bshData"    # Ljava/lang/String;
    .param p2, "source"    # Z

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lorg/jpos/transaction/participant/BSHMethod;->bshData:Ljava/lang/String;

    .line 115
    iput-boolean p2, p0, Lorg/jpos/transaction/participant/BSHMethod;->source:Z

    .line 116
    return-void
.end method

.method public static createBshMethod(Lorg/jdom2/Element;)Lorg/jpos/transaction/participant/BSHMethod;
    .locals 9
    .param p0, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 75
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 76
    return-object v0

    .line 78
    :cond_0
    const-string v1, "file"

    invoke-static {p0, v1}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "file":Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "cache":Z
    const-string v3, "cache"

    invoke-static {p0, v3}, Lorg/jpos/q2/QFactory;->getAttributeValue(Lorg/jdom2/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "cacheAtt":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 84
    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 86
    :cond_1
    if-nez v0, :cond_2

    .line 87
    new-instance v2, Lorg/jpos/transaction/participant/BSHMethod;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Lorg/jpos/transaction/participant/BSHMethod;-><init>(Ljava/lang/String;Z)V

    return-object v2

    .line 89
    :cond_2
    const-string v4, ""

    .line 90
    .local v4, "bsh":Ljava/lang/String;
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 92
    .local v5, "f":Ljava/io/FileReader;
    :goto_0
    invoke-virtual {v5}, Ljava/io/FileReader;->read()I

    move-result v6

    move v7, v6

    .local v7, "c":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_3

    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v8, v7

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 95
    :cond_3
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V

    .line 96
    new-instance v6, Lorg/jpos/transaction/participant/BSHMethod;

    invoke-direct {v6, v4, v2}, Lorg/jpos/transaction/participant/BSHMethod;-><init>(Ljava/lang/String;Z)V

    return-object v6

    .line 99
    .end local v0    # "cache":Z
    .end local v3    # "cacheAtt":Ljava/lang/String;
    .end local v4    # "bsh":Ljava/lang/String;
    .end local v5    # "f":Ljava/io/FileReader;
    .end local v7    # "c":I
    :cond_4
    invoke-virtual {p0}, Lorg/jdom2/Element;->getTextTrim()Ljava/lang/String;

    move-result-object v3

    .line 100
    .local v3, "bsh":Ljava/lang/String;
    if-eqz v3, :cond_6

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 103
    :cond_5
    new-instance v0, Lorg/jpos/transaction/participant/BSHMethod;

    invoke-direct {v0, v3, v2}, Lorg/jpos/transaction/participant/BSHMethod;-><init>(Ljava/lang/String;Z)V

    return-object v0

    .line 101
    :cond_6
    :goto_1
    return-object v0
.end method


# virtual methods
.method public execute(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "arguments"    # Ljava/util/Map;
    .param p2, "resultName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0, p1}, Lorg/jpos/transaction/participant/BSHMethod;->initInterpreter(Ljava/util/Map;)Lbsh/Interpreter;

    move-result-object v0

    .line 127
    .local v0, "i":Lbsh/Interpreter;
    invoke-virtual {v0, p2}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public execute(Ljava/util/Map;Ljava/util/Collection;)Ljava/util/Map;
    .locals 6
    .param p1, "arguments"    # Ljava/util/Map;
    .param p2, "returnNames"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    invoke-virtual {p0, p1}, Lorg/jpos/transaction/participant/BSHMethod;->initInterpreter(Ljava/util/Map;)Lbsh/Interpreter;

    move-result-object v0

    .line 142
    .local v0, "i":Lbsh/Interpreter;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v1, "result":Ljava/util/Map;
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 145
    .local v3, "returnName":Ljava/lang/Object;
    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 146
    .local v4, "rName":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lbsh/Interpreter;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v3    # "returnName":Ljava/lang/Object;
    goto :goto_0

    .line 148
    .end local v4    # "rName":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method protected initInterpreter(Ljava/util/Map;)Lbsh/Interpreter;
    .locals 6
    .param p1, "arguments"    # Ljava/util/Map;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/EvalError;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Lbsh/Interpreter;

    invoke-direct {v0}, Lbsh/Interpreter;-><init>()V

    .line 154
    .local v0, "i":Lbsh/Interpreter;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 155
    .local v2, "o":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Ljava/util/Map$Entry;

    .line 156
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lbsh/Interpreter;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 157
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 158
    .end local v3    # "entry":Ljava/util/Map$Entry;
    :cond_0
    iget-boolean v1, p0, Lorg/jpos/transaction/participant/BSHMethod;->source:Z

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lorg/jpos/transaction/participant/BSHMethod;->bshData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->source(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 161
    :cond_1
    iget-object v1, p0, Lorg/jpos/transaction/participant/BSHMethod;->bshData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbsh/Interpreter;->eval(Ljava/lang/String;)Ljava/lang/Object;

    .line 163
    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/jpos/transaction/participant/BSHMethod;->bshData:Ljava/lang/String;

    return-object v0
.end method
