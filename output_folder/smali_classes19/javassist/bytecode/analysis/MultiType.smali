.class public Ljavassist/bytecode/analysis/MultiType;
.super Ljavassist/bytecode/analysis/Type;
.source "MultiType.java"


# instance fields
.field private changed:Z

.field private interfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation
.end field

.field private mergeSource:Ljavassist/bytecode/analysis/MultiType;

.field private potentialClass:Ljavassist/bytecode/analysis/Type;

.field private resolved:Ljavassist/bytecode/analysis/Type;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p1, "interfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavassist/bytecode/analysis/MultiType;-><init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljavassist/bytecode/analysis/Type;)V
    .locals 1
    .param p2, "potentialClass"    # Ljavassist/bytecode/analysis/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;",
            "Ljavassist/bytecode/analysis/Type;",
            ")V"
        }
    .end annotation

    .line 60
    .local p1, "interfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/Type;-><init>(Ljavassist/CtClass;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 61
    iput-object p1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 62
    iput-object p2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 63
    return-void
.end method

.method private getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;
    .locals 4
    .param p1, "type"    # Ljavassist/bytecode/analysis/MultiType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/analysis/MultiType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    iget-object v1, p1, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/CtClass;

    .line 185
    .local v2, "intf":Ljavassist/CtClass;
    invoke-virtual {v2}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    invoke-virtual {p0, v2, v0}, Ljavassist/bytecode/analysis/MultiType;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    .line 187
    .end local v2    # "intf":Ljavassist/CtClass;
    goto :goto_0

    .line 189
    :cond_0
    return-object v0
.end method

.method private inMergeSource(Ljavassist/bytecode/analysis/MultiType;)Z
    .locals 1
    .param p1, "source"    # Ljavassist/bytecode/analysis/MultiType;

    .line 208
    :goto_0
    if-eqz p1, :cond_1

    .line 209
    if-ne p1, p0, :cond_0

    .line 210
    const/4 v0, 0x1

    return v0

    .line 212
    :cond_0
    iget-object p1, p1, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    .line 215
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;
    .locals 3
    .param p1, "multi"    # Ljavassist/bytecode/analysis/MultiType;
    .param p2, "single"    # Ljavassist/bytecode/analysis/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/analysis/MultiType;",
            "Ljavassist/bytecode/analysis/Type;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v0

    .line 202
    .local v0, "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-virtual {p2}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Ljavassist/bytecode/analysis/MultiType;->getAllInterfaces(Ljavassist/CtClass;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 204
    .local v1, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/MultiType;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private mergeMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;
    .locals 3
    .param p1, "type1"    # Ljavassist/bytecode/analysis/MultiType;
    .param p2, "type2"    # Ljavassist/bytecode/analysis/MultiType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/analysis/MultiType;",
            "Ljavassist/bytecode/analysis/MultiType;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v0

    .line 195
    .local v0, "map1":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-direct {p0, p2}, Ljavassist/bytecode/analysis/MultiType;->getAllMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v1

    .line 197
    .local v1, "map2":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-virtual {p0, v0, v1}, Ljavassist/bytecode/analysis/MultiType;->findCommonInterfaces(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2
.end method

.method private propogateResolved()V
    .locals 2

    .line 164
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    .line 165
    .local v0, "source":Ljavassist/bytecode/analysis/MultiType;
    :goto_0
    if-eqz v0, :cond_0

    .line 166
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 167
    iget-object v0, v0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method private propogateState()V
    .locals 2

    .line 155
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    .line 156
    .local v0, "source":Ljavassist/bytecode/analysis/MultiType;
    :goto_0
    if-eqz v0, :cond_0

    .line 157
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 158
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    iput-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 159
    iget-object v0, v0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    goto :goto_0

    .line 161
    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 298
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 299
    return v1

    .line 301
    :cond_0
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/analysis/MultiType;

    .line 302
    .local v0, "multi":Ljavassist/bytecode/analysis/MultiType;
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v2, :cond_1

    .line 303
    iget-object v1, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2, v1}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 304
    :cond_1
    iget-object v2, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v2, :cond_2

    .line 305
    return v1

    .line 307
    :cond_2
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    iget-object v2, v0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getComponent()Ljavassist/bytecode/analysis/Type;
    .locals 1

    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCtClass()Ljavassist/CtClass;
    .locals 1

    .line 71
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->getCtClass()Ljavassist/CtClass;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 290
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->hashCode()I

    move-result v0

    return v0

    .line 293
    :cond_0
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public isArray()Z
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z
    .locals 2
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAssignableTo(Ljavassist/bytecode/analysis/Type;)Z
    .locals 3
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 117
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p1, v0}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result v0

    return v0

    .line 120
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0, p1}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 121
    return v1

    .line 123
    :cond_1
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljavassist/bytecode/analysis/Type;->isAssignableFrom(Ljavassist/bytecode/analysis/Type;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 126
    :cond_2
    invoke-direct {p0, p0, p1}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object v0

    .line 128
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v2, v1, :cond_3

    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-nez v2, :cond_3

    .line 130
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/CtClass;

    invoke-static {v2}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v2

    iput-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 131
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    .line 133
    return v1

    .line 137
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lt v2, v1, :cond_4

    .line 138
    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 139
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateState()V

    .line 141
    return v1

    .line 144
    :cond_4
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v2, :cond_5

    .line 145
    iput-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 146
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    .line 148
    return v1

    .line 151
    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method public isReference()Z
    .locals 1

    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;
    .locals 5
    .param p1, "type"    # Ljavassist/bytecode/analysis/Type;

    .line 220
    if-ne p0, p1, :cond_0

    .line 221
    return-object p0

    .line 223
    :cond_0
    sget-object v0, Ljavassist/bytecode/analysis/MultiType;->UNINIT:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_1

    .line 224
    return-object p0

    .line 226
    :cond_1
    sget-object v0, Ljavassist/bytecode/analysis/MultiType;->BOGUS:Ljavassist/bytecode/analysis/Type;

    if-ne p1, v0, :cond_2

    .line 227
    sget-object v0, Ljavassist/bytecode/analysis/MultiType;->BOGUS:Ljavassist/bytecode/analysis/Type;

    return-object v0

    .line 229
    :cond_2
    if-nez p1, :cond_3

    .line 230
    return-object p0

    .line 232
    :cond_3
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_4

    .line 233
    invoke-virtual {v0, p1}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    return-object v0

    .line 235
    :cond_4
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    .line 236
    invoke-virtual {v0, p1}, Ljavassist/bytecode/analysis/Type;->merge(Ljavassist/bytecode/analysis/Type;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    .line 237
    .local v0, "mergePotential":Ljavassist/bytecode/analysis/Type;
    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v0, v2}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->popChanged()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 238
    :cond_5
    sget-object v2, Ljavassist/bytecode/analysis/Type;->OBJECT:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2, v0}, Ljavassist/bytecode/analysis/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_6
    move-object v2, v0

    :goto_0
    iput-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    .line 239
    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 245
    .end local v0    # "mergePotential":Ljavassist/bytecode/analysis/Type;
    :cond_7
    instance-of v0, p1, Ljavassist/bytecode/analysis/MultiType;

    if-eqz v0, :cond_a

    .line 246
    move-object v0, p1

    check-cast v0, Ljavassist/bytecode/analysis/MultiType;

    .line 248
    .local v0, "multi":Ljavassist/bytecode/analysis/MultiType;
    iget-object v2, v0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v2, :cond_8

    .line 249
    invoke-direct {p0, p0, v2}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object v2

    .local v2, "merged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    goto :goto_1

    .line 251
    .end local v2    # "merged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    :cond_8
    invoke-direct {p0, v0, p0}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiInterfaces(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/MultiType;)Ljava/util/Map;

    move-result-object v2

    .line 252
    .restart local v2    # "merged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    invoke-direct {p0, v0}, Ljavassist/bytecode/analysis/MultiType;->inMergeSource(Ljavassist/bytecode/analysis/MultiType;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 253
    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->mergeSource:Ljavassist/bytecode/analysis/MultiType;

    .line 255
    .end local v0    # "multi":Ljavassist/bytecode/analysis/MultiType;
    :cond_9
    :goto_1
    goto :goto_2

    .line 256
    .end local v2    # "merged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    :cond_a
    invoke-direct {p0, p0, p1}, Ljavassist/bytecode/analysis/MultiType;->mergeMultiAndSingle(Ljavassist/bytecode/analysis/MultiType;Ljavassist/bytecode/analysis/Type;)Ljava/util/Map;

    move-result-object v2

    .line 260
    .restart local v2    # "merged":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavassist/CtClass;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-gt v0, v1, :cond_e

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_b

    goto :goto_4

    .line 276
    :cond_b
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-ne v0, v1, :cond_c

    .line 277
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    invoke-static {v0}, Ljavassist/bytecode/analysis/Type;->get(Ljavassist/CtClass;)Ljavassist/bytecode/analysis/Type;

    move-result-object v0

    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    goto :goto_3

    .line 278
    :cond_c
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_d

    .line 279
    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    goto :goto_3

    .line 281
    :cond_d
    sget-object v0, Ljavassist/bytecode/analysis/MultiType;->OBJECT:Ljavassist/bytecode/analysis/Type;

    iput-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    .line 283
    :goto_3
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateResolved()V

    .line 285
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    return-object v0

    .line 262
    :cond_e
    :goto_4
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v3, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v0, v3, :cond_f

    .line 263
    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    goto :goto_6

    .line 264
    :cond_f
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    if-nez v0, :cond_11

    .line 265
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 267
    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 266
    .end local v3    # "key":Ljava/lang/String;
    :cond_10
    goto :goto_5

    .line 270
    :cond_11
    :goto_6
    iput-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    .line 271
    invoke-direct {p0}, Ljavassist/bytecode/analysis/MultiType;->propogateState()V

    .line 273
    return-object p0
.end method

.method popChanged()Z
    .locals 2

    .line 106
    iget-boolean v0, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 107
    .local v0, "changed":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavassist/bytecode/analysis/MultiType;->changed:Z

    .line 108
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 312
    iget-object v0, p0, Ljavassist/bytecode/analysis/MultiType;->resolved:Ljavassist/bytecode/analysis/Type;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 315
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->interfaces:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 317
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 318
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    if-eqz v1, :cond_2

    .line 319
    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Ljavassist/bytecode/analysis/MultiType;->potentialClass:Ljavassist/bytecode/analysis/Type;

    invoke-virtual {v2}, Ljavassist/bytecode/analysis/Type;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 321
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 322
    :goto_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
