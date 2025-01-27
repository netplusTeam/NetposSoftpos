.class public Lbsh/ExternalNameSpace;
.super Lbsh/NameSpace;
.source "ExternalNameSpace.java"


# instance fields
.field private externalMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 76
    const/4 v0, 0x0

    const-string v1, "External Map Namespace"

    invoke-direct {p0, v0, v1, v0}, Lbsh/ExternalNameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Lbsh/NameSpace;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "parent"    # Lbsh/NameSpace;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "externalMap"    # Ljava/util/Map;

    .line 83
    invoke-direct {p0, p1, p2}, Lbsh/NameSpace;-><init>(Lbsh/NameSpace;Ljava/lang/String;)V

    .line 85
    if-nez p3, :cond_0

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object p3, v0

    .line 88
    :cond_0
    iput-object p3, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    .line 90
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 201
    invoke-super {p0}, Lbsh/NameSpace;->clear()V

    .line 202
    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 203
    return-void
.end method

.method public createVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "mods"    # Lbsh/Modifiers;

    .line 184
    new-instance v0, Lbsh/LHS;

    iget-object v1, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-direct {v0, v1, p1}, Lbsh/LHS;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .local v0, "lhs":Lbsh/LHS;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p3, v1}, Lbsh/LHS;->assign(Ljava/lang/Object;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lbsh/UtilEvalError; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    nop

    .line 192
    new-instance v1, Lbsh/Variable;

    invoke-direct {v1, p1, p2, v0}, Lbsh/Variable;-><init>(Ljava/lang/String;Ljava/lang/Class;Lbsh/LHS;)V

    return-object v1

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Lbsh/UtilEvalError;
    new-instance v2, Lbsh/InterpreterError;

    invoke-virtual {v1}, Lbsh/UtilEvalError;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lbsh/InterpreterError;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getMap()Ljava/util/Map;
    .locals 1

    .line 95
    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "recurse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbsh/UtilEvalError;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 154
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 159
    invoke-super {p0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    .line 162
    invoke-super {p0, p1, p2}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v1

    .local v1, "var":Lbsh/Variable;
    goto :goto_0

    .line 167
    .end local v1    # "var":Lbsh/Variable;
    :cond_0
    const/4 v1, 0x0

    invoke-super {p0, p1, v1}, Lbsh/NameSpace;->getVariableImpl(Ljava/lang/String;Z)Lbsh/Variable;

    move-result-object v1

    .line 172
    .local v1, "localVar":Lbsh/Variable;
    if-nez v1, :cond_1

    .line 173
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v2}, Lbsh/ExternalNameSpace;->createVariable(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;Lbsh/Modifiers;)Lbsh/Variable;

    move-result-object v2

    move-object v1, v2

    .local v2, "var":Lbsh/Variable;
    goto :goto_0

    .line 175
    .end local v2    # "var":Lbsh/Variable;
    :cond_1
    move-object v2, v1

    .line 178
    .local v1, "var":Lbsh/Variable;
    :goto_0
    return-object v1
.end method

.method public getVariableNames()[Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v0, "nameSet":Ljava/util/Set;
    invoke-super {p0}, Lbsh/NameSpace;->getVariableNames()[Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "nsNames":[Ljava/lang/String;
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 128
    iget-object v2, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 129
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public setMap(Ljava/util/Map;)V
    .locals 1
    .param p1, "map"    # Ljava/util/Map;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    .line 108
    invoke-virtual {p0}, Lbsh/ExternalNameSpace;->clear()V

    .line 109
    iput-object p1, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    .line 110
    return-void
.end method

.method public unsetVariable(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 116
    invoke-super {p0, p1}, Lbsh/NameSpace;->unsetVariable(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lbsh/ExternalNameSpace;->externalMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
