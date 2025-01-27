.class public Lorg/yaml/snakeyaml/composer/Composer;
.super Ljava/lang/Object;
.source "Composer.java"


# instance fields
.field private final anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

.field private nonScalarAliasesCount:I

.field protected final parser:Lorg/yaml/snakeyaml/parser/Parser;

.field private final recursiveNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;)V
    .locals 1
    .param p1, "parser"    # Lorg/yaml/snakeyaml/parser/Parser;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 60
    new-instance v0, Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-direct {v0}, Lorg/yaml/snakeyaml/LoaderOptions;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/yaml/snakeyaml/composer/Composer;-><init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Lorg/yaml/snakeyaml/parser/Parser;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/LoaderOptions;)V
    .locals 1
    .param p1, "parser"    # Lorg/yaml/snakeyaml/parser/Parser;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;
    .param p3, "loadingConfig"    # Lorg/yaml/snakeyaml/LoaderOptions;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->nonScalarAliasesCount:I

    .line 64
    iput-object p1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    .line 65
    iput-object p2, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    .line 68
    iput-object p3, p0, Lorg/yaml/snakeyaml/composer/Composer;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    .line 69
    return-void
.end method

.method private composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 6
    .param p1, "parent"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 134
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->Alias:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/AliasEvent;

    .line 138
    .local v0, "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "anchor":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 143
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/yaml/snakeyaml/nodes/Node;

    .line 144
    .local v2, "node":Lorg/yaml/snakeyaml/nodes/Node;
    instance-of v3, v2, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    .line 145
    iget v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->nonScalarAliasesCount:I

    add-int/2addr v3, v4

    iput v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->nonScalarAliasesCount:I

    .line 146
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/LoaderOptions;->getMaxAliasesForCollections()I

    move-result v5

    if-gt v3, v5, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    new-instance v3, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number of aliases for non-scalar nodes exceeds the specified max="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->loadingConfig:Lorg/yaml/snakeyaml/LoaderOptions;

    invoke-virtual {v5}, Lorg/yaml/snakeyaml/LoaderOptions;->getMaxAliasesForCollections()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    :cond_2
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 151
    invoke-virtual {v2, v4}, Lorg/yaml/snakeyaml/nodes/Node;->setTwoStepsConstruction(Z)V

    .line 153
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 140
    .end local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .restart local v1    # "anchor":Ljava/lang/String;
    :cond_4
    new-instance v2, Lorg/yaml/snakeyaml/composer/ComposerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "found undefined alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/AliasEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v2

    .line 154
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/AliasEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->peekEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/NodeEvent;

    .line 155
    .local v0, "event":Lorg/yaml/snakeyaml/events/NodeEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/NodeEvent;->getAnchor()Ljava/lang/String;

    move-result-object v1

    .line 157
    .restart local v1    # "anchor":Ljava/lang/String;
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v3, Lorg/yaml/snakeyaml/events/Event$ID;->Scalar:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 158
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeScalarNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .restart local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 159
    .end local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_6
    iget-object v2, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v3, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 160
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .restart local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 162
    .end local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :cond_7
    invoke-virtual {p0, v1}, Lorg/yaml/snakeyaml/composer/Composer;->composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v2

    .line 165
    .end local v0    # "event":Lorg/yaml/snakeyaml/events/NodeEvent;
    .end local v1    # "anchor":Ljava/lang/String;
    .restart local v2    # "node":Lorg/yaml/snakeyaml/nodes/Node;
    :goto_1
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 166
    return-object v2
.end method


# virtual methods
.method public checkNode()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamStart:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 82
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v1, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected composeKeyNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 253
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method protected composeMappingChildren(Ljava/util/List;Lorg/yaml/snakeyaml/nodes/MappingNode;)V
    .locals 3
    .param p2, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/yaml/snakeyaml/nodes/NodeTuple;",
            ">;",
            "Lorg/yaml/snakeyaml/nodes/MappingNode;",
            ")V"
        }
    .end annotation

    .line 244
    .local p1, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-virtual {p0, p2}, Lorg/yaml/snakeyaml/composer/Composer;->composeKeyNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 245
    .local v0, "itemKey":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    sget-object v2, Lorg/yaml/snakeyaml/nodes/Tag;->MERGE:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setMerged(Z)V

    .line 248
    :cond_0
    invoke-virtual {p0, p2}, Lorg/yaml/snakeyaml/composer/Composer;->composeValueNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v1

    .line 249
    .local v1, "itemValue":Lorg/yaml/snakeyaml/nodes/Node;
    new-instance v2, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    invoke-direct {v2, v0, v1}, Lorg/yaml/snakeyaml/nodes/NodeTuple;-><init>(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method protected composeMappingNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 13
    .param p1, "anchor"    # Ljava/lang/String;

    .line 217
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    .line 218
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/MappingStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 221
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    goto :goto_1

    .line 222
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 223
    .restart local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 228
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 229
    .local v11, "children":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    new-instance v12, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    .line 230
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/MappingStartEvent;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v10

    move-object v4, v12

    move-object v5, v3

    move v6, v2

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/MappingNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 231
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    if-eqz p1, :cond_2

    .line 232
    invoke-virtual {v4, p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setAnchor(Ljava/lang/String;)V

    .line 233
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->MappingEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 236
    invoke-virtual {p0, v11, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeMappingChildren(Ljava/util/List;Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    goto :goto_2

    .line 238
    :cond_3
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v5

    .line 239
    .local v5, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 240
    return-object v4
.end method

.method protected composeScalarNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 12
    .param p1, "anchor"    # Ljava/lang/String;

    .line 170
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/ScalarEvent;

    .line 171
    .local v0, "ev":Lorg/yaml/snakeyaml/events/ScalarEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 174
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    goto :goto_1

    .line 175
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getImplicit()Lorg/yaml/snakeyaml/events/ImplicitTuple;

    move-result-object v6

    invoke-virtual {v6}, Lorg/yaml/snakeyaml/events/ImplicitTuple;->canOmitTagInPlainScalar()Z

    move-result v6

    .line 175
    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 177
    .restart local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 181
    :goto_1
    new-instance v11, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    .line 182
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v9

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/ScalarEvent;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v10

    move-object v4, v11

    move-object v5, v3

    move v6, v2

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/ScalarNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 183
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/Node;
    if-eqz p1, :cond_2

    .line 184
    invoke-virtual {v4, p1}, Lorg/yaml/snakeyaml/nodes/Node;->setAnchor(Ljava/lang/String;)V

    .line 185
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_2
    return-object v4
.end method

.method protected composeSequenceNode(Ljava/lang/String;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 13
    .param p1, "anchor"    # Ljava/lang/String;

    .line 191
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v0

    check-cast v0, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    .line 192
    .local v0, "startEvent":Lorg/yaml/snakeyaml/events/SequenceStartEvent;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "tag":Ljava/lang/String;
    const/4 v2, 0x0

    .line 195
    .local v2, "resolved":Z
    if-eqz v1, :cond_1

    const-string v3, "!"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v3, Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-direct {v3, v1}, Lorg/yaml/snakeyaml/nodes/Tag;-><init>(Ljava/lang/String;)V

    .local v3, "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    goto :goto_1

    .line 196
    .end local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :cond_1
    :goto_0
    iget-object v3, p0, Lorg/yaml/snakeyaml/composer/Composer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getImplicit()Z

    move-result v6

    invoke-virtual {v3, v4, v5, v6}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v3

    .line 197
    .restart local v3    # "nodeTag":Lorg/yaml/snakeyaml/nodes/Tag;
    const/4 v2, 0x1

    .line 201
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v4

    .line 202
    .local v11, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/yaml/snakeyaml/nodes/Node;>;"
    new-instance v12, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v8

    const/4 v9, 0x0

    .line 203
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v10

    move-object v4, v12

    move-object v5, v3

    move v6, v2

    move-object v7, v11

    invoke-direct/range {v4 .. v10}, Lorg/yaml/snakeyaml/nodes/SequenceNode;-><init>(Lorg/yaml/snakeyaml/nodes/Tag;ZLjava/util/List;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 204
    .local v4, "node":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    if-eqz p1, :cond_2

    .line 205
    invoke-virtual {v4, p1}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setAnchor(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v5, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    :cond_2
    :goto_2
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v6, Lorg/yaml/snakeyaml/events/Event$ID;->SequenceEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v5, v6}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 209
    invoke-direct {p0, v4}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 211
    :cond_3
    iget-object v5, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v5}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v5

    .line 212
    .local v5, "endEvent":Lorg/yaml/snakeyaml/events/Event;
    invoke-virtual {v5}, Lorg/yaml/snakeyaml/events/Event;->getEndMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setEndMark(Lorg/yaml/snakeyaml/error/Mark;)V

    .line 213
    return-object v4
.end method

.method protected composeValueNode(Lorg/yaml/snakeyaml/nodes/MappingNode;)Lorg/yaml/snakeyaml/nodes/Node;
    .locals 1
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 257
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public getNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/yaml/snakeyaml/composer/Composer;->composeNode(Lorg/yaml/snakeyaml/nodes/Node;)Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 97
    .local v0, "node":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 99
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->anchors:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 100
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->recursiveNodes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 101
    return-object v0
.end method

.method public getSingleNode()Lorg/yaml/snakeyaml/nodes/Node;
    .locals 7

    .line 115
    iget-object v0, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v0}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 117
    const/4 v0, 0x0

    .line 118
    .local v0, "document":Lorg/yaml/snakeyaml/nodes/Node;
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/yaml/snakeyaml/composer/Composer;->getNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v0

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    sget-object v2, Lorg/yaml/snakeyaml/events/Event$ID;->StreamEnd:Lorg/yaml/snakeyaml/events/Event$ID;

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/parser/Parser;->checkEvent(Lorg/yaml/snakeyaml/events/Event$ID;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 123
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    move-result-object v1

    .line 124
    .local v1, "event":Lorg/yaml/snakeyaml/events/Event;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 125
    .local v2, "contextMark":Lorg/yaml/snakeyaml/error/Mark;
    :goto_0
    new-instance v3, Lorg/yaml/snakeyaml/composer/ComposerException;

    .line 126
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/events/Event;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v4

    const-string v5, "expected a single document in the stream"

    const-string v6, "but found another document"

    invoke-direct {v3, v5, v2, v6, v4}, Lorg/yaml/snakeyaml/composer/ComposerException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;)V

    throw v3

    .line 129
    .end local v1    # "event":Lorg/yaml/snakeyaml/events/Event;
    .end local v2    # "contextMark":Lorg/yaml/snakeyaml/error/Mark;
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/composer/Composer;->parser:Lorg/yaml/snakeyaml/parser/Parser;

    invoke-interface {v1}, Lorg/yaml/snakeyaml/parser/Parser;->getEvent()Lorg/yaml/snakeyaml/events/Event;

    .line 130
    return-object v0
.end method
