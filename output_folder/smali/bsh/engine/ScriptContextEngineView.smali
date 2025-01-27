.class public Lbsh/engine/ScriptContextEngineView;
.super Ljava/lang/Object;
.source "ScriptContextEngineView.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field context:Ljavax/script/ScriptContext;


# direct methods
.method public constructor <init>(Ljavax/script/ScriptContext;)V
    .locals 0
    .param p1, "context"    # Ljavax/script/ScriptContext;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    .line 28
    return-void
.end method

.method private totalKeySet()Ljava/util/Set;
    .locals 5

    .line 250
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 251
    .local v0, "keys":Ljava/util/Set;
    iget-object v1, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    invoke-interface {v1}, Ljavax/script/ScriptContext;->getScopes()Ljava/util/List;

    move-result-object v1

    .line 252
    .local v1, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 253
    .local v3, "i":I
    iget-object v4, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    invoke-interface {v4, v3}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v4

    invoke-interface {v4}, Ljavax/script/Bindings;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    .end local v3    # "i":I
    goto :goto_0

    .line 255
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private totalValueSet()Ljava/util/Set;
    .locals 5

    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 260
    .local v0, "values":Ljava/util/Set;
    iget-object v1, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    invoke-interface {v1}, Ljavax/script/ScriptContext;->getScopes()Ljava/util/List;

    move-result-object v1

    .line 261
    .local v1, "scopes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 262
    .local v3, "i":I
    iget-object v4, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    invoke-interface {v4, v3}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v4

    invoke-interface {v4}, Ljavax/script/Bindings;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 263
    .end local v3    # "i":I
    goto :goto_0

    .line 264
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 202
    iget-object v0, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v0

    invoke-interface {v0}, Ljavax/script/Bindings;->clear()V

    .line 203
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/script/ScriptContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .line 87
    invoke-direct {p0}, Lbsh/engine/ScriptContextEngineView;->totalValueSet()Ljava/util/Set;

    move-result-object v0

    .line 88
    .local v0, "values":Ljava/util/Set;
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/lang/Error;

    const-string/jumbo v1, "unimplemented"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljavax/script/ScriptContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 44
    invoke-direct {p0}, Lbsh/engine/ScriptContextEngineView;->totalKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1

    .line 213
    invoke-direct {p0}, Lbsh/engine/ScriptContextEngineView;->totalKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 21
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lbsh/engine/ScriptContextEngineView;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    .line 135
    const/16 v1, 0x64

    invoke-interface {v0, p1, v1}, Ljavax/script/ScriptContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 136
    .local v0, "oldValue":Ljava/lang/Object;
    iget-object v2, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    invoke-interface {v2, p1, p2, v1}, Ljavax/script/ScriptContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;I)V

    .line 137
    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 158
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    iget-object v0, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Ljavax/script/ScriptContext;->getBindings(I)Ljavax/script/Bindings;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/script/Bindings;->putAll(Ljava/util/Map;)V

    .line 159
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "okey"    # Ljava/lang/Object;

    .line 188
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 189
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    .line 190
    const/16 v2, 0x64

    invoke-interface {v1, v0, v2}, Ljavax/script/ScriptContext;->getAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "oldValue":Ljava/lang/Object;
    iget-object v3, p0, Lbsh/engine/ScriptContextEngineView;->context:Ljavax/script/ScriptContext;

    invoke-interface {v3, v0, v2}, Ljavax/script/ScriptContext;->removeAttribute(Ljava/lang/String;I)Ljava/lang/Object;

    .line 192
    return-object v1
.end method

.method public size()I
    .locals 1

    .line 36
    invoke-direct {p0}, Lbsh/engine/ScriptContextEngineView;->totalKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1

    .line 225
    invoke-direct {p0}, Lbsh/engine/ScriptContextEngineView;->totalValueSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
