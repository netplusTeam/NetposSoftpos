.class public final Lorg/yaml/snakeyaml/serializer/Serializer;
.super Ljava/lang/Object;
.source "Serializer.java"


# instance fields
.field private anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

.field private anchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Ljava/lang/Boolean;

.field private final emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

.field private explicitEnd:Z

.field private explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

.field private explicitStart:Z

.field private final resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

.field private serializedNodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/yaml/snakeyaml/nodes/Node;",
            ">;"
        }
    .end annotation
.end field

.field private useTags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;


# direct methods
.method public constructor <init>(Lorg/yaml/snakeyaml/emitter/Emitable;Lorg/yaml/snakeyaml/resolver/Resolver;Lorg/yaml/snakeyaml/DumperOptions;Lorg/yaml/snakeyaml/nodes/Tag;)V
    .locals 1
    .param p1, "emitter"    # Lorg/yaml/snakeyaml/emitter/Emitable;
    .param p2, "resolver"    # Lorg/yaml/snakeyaml/resolver/Resolver;
    .param p3, "opts"    # Lorg/yaml/snakeyaml/DumperOptions;
    .param p4, "rootTag"    # Lorg/yaml/snakeyaml/nodes/Tag;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    .line 65
    iput-object p2, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    .line 66
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isExplicitStart()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitStart:Z

    .line 67
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->isExplicitEnd()Z

    move-result v0

    iput-boolean v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitEnd:Z

    .line 68
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getVersion()Lorg/yaml/snakeyaml/DumperOptions$Version;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;

    .line 71
    :cond_0
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getTags()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useTags:Ljava/util/Map;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    .line 74
    invoke-virtual {p3}, Lorg/yaml/snakeyaml/DumperOptions;->getAnchorGenerator()Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 76
    iput-object p4, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    .line 77
    return-void
.end method

.method private anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 121
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v0

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v0, v1, :cond_0

    .line 122
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/AnchorNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/AnchorNode;->getRealNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object p1

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 126
    .local v0, "anchor":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 127
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorGenerator:Lorg/yaml/snakeyaml/serializer/AnchorGenerator;

    invoke-interface {v1, p1}, Lorg/yaml/snakeyaml/serializer/AnchorGenerator;->nextAnchor(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/String;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    .end local v0    # "anchor":Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 131
    :cond_2
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/yaml/snakeyaml/serializer/Serializer$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 141
    :pswitch_0
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 142
    .local v0, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v1

    .line 143
    .local v1, "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 144
    .local v3, "object":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v4

    .line 145
    .local v4, "key":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v3}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 146
    .local v5, "value":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {p0, v4}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 147
    invoke-direct {p0, v5}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 148
    .end local v3    # "object":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v4    # "key":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v5    # "value":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 134
    .end local v0    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v1    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    :pswitch_1
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 135
    .local v0, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    .line 136
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/nodes/Node;

    .line 137
    .local v3, "item":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {p0, v3}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 138
    .end local v3    # "item":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 139
    :cond_3
    nop

    .line 152
    .end local v0    # "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    :cond_4
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 13
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "parent"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v0

    sget-object v1, Lorg/yaml/snakeyaml/nodes/NodeId;->anchor:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v0, v1, :cond_0

    .line 157
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/AnchorNode;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/nodes/AnchorNode;->getRealNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object p1

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    .local v0, "tAlias":Ljava/lang/String;
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x0

    if-eqz v1, :cond_1

    .line 161
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v2, Lorg/yaml/snakeyaml/events/AliasEvent;

    invoke-direct {v2, v0, v8, v8}, Lorg/yaml/snakeyaml/events/AliasEvent;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    goto/16 :goto_2

    .line 163
    :cond_1
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v1, Lorg/yaml/snakeyaml/serializer/Serializer$1;->$SwitchMap$org$yaml$snakeyaml$nodes$NodeId:[I

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v2

    invoke-virtual {v2}, Lorg/yaml/snakeyaml/nodes/NodeId;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    .line 188
    :pswitch_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/NodeId;->mapping:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v1, v3, v8, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v9

    .line 189
    .local v9, "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 190
    .local v10, "implicitM":Z
    iget-object v11, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v12, Lorg/yaml/snakeyaml/events/MappingStartEvent;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/CollectionNode;

    .line 191
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/CollectionNode;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v7

    move-object v1, v12

    move-object v2, v0

    move v4, v10

    invoke-direct/range {v1 .. v7}, Lorg/yaml/snakeyaml/events/MappingStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 190
    invoke-interface {v11, v12}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 192
    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 193
    .local v1, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v2

    .line 194
    .local v2, "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    goto/16 :goto_1

    .line 166
    .end local v1    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v2    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v9    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v10    # "implicitM":Z
    :pswitch_1
    move-object v9, p1

    check-cast v9, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 167
    .local v9, "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v3, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v10

    .line 168
    .local v10, "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v2, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v11

    .line 169
    .local v11, "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    new-instance v4, Lorg/yaml/snakeyaml/events/ImplicitTuple;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v1, v10}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 170
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v2

    invoke-virtual {v2, v11}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {v4, v1, v2}, Lorg/yaml/snakeyaml/events/ImplicitTuple;-><init>(ZZ)V

    .line 171
    .local v4, "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    new-instance v12, Lorg/yaml/snakeyaml/events/ScalarEvent;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->getScalarStyle()Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;

    move-result-object v8

    move-object v1, v12

    move-object v2, v0

    invoke-direct/range {v1 .. v8}, Lorg/yaml/snakeyaml/events/ScalarEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/yaml/snakeyaml/events/ImplicitTuple;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$ScalarStyle;)V

    .line 173
    .local v1, "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    iget-object v2, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    invoke-interface {v2, v1}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 174
    goto/16 :goto_2

    .line 176
    .end local v1    # "event":Lorg/yaml/snakeyaml/events/ScalarEvent;
    .end local v4    # "tuple":Lorg/yaml/snakeyaml/events/ImplicitTuple;
    .end local v9    # "scalarNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v10    # "detectedTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v11    # "defaultTag":Lorg/yaml/snakeyaml/nodes/Tag;
    :pswitch_2
    move-object v9, p1

    check-cast v9, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 177
    .local v9, "seqNode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    iget-object v3, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->resolver:Lorg/yaml/snakeyaml/resolver/Resolver;

    sget-object v4, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    invoke-virtual {v3, v4, v8, v2}, Lorg/yaml/snakeyaml/resolver/Resolver;->resolve(Lorg/yaml/snakeyaml/nodes/NodeId;Ljava/lang/String;Z)Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v10

    .line 179
    .local v10, "implicitS":Z
    iget-object v11, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v12, Lorg/yaml/snakeyaml/events/SequenceStartEvent;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v1

    invoke-virtual {v1}, Lorg/yaml/snakeyaml/nodes/Tag;->getValue()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 180
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getFlowStyle()Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;

    move-result-object v7

    move-object v1, v12

    move-object v2, v0

    move v4, v10

    invoke-direct/range {v1 .. v7}, Lorg/yaml/snakeyaml/events/SequenceStartEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/DumperOptions$FlowStyle;)V

    .line 179
    invoke-interface {v11, v12}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 181
    invoke-virtual {v9}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->getValue()Ljava/util/List;

    move-result-object v1

    .line 182
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/yaml/snakeyaml/nodes/Node;

    .line 183
    .local v3, "item":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {p0, v3, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 184
    .end local v3    # "item":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_0

    .line 185
    :cond_2
    iget-object v2, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v3, Lorg/yaml/snakeyaml/events/SequenceEndEvent;

    invoke-direct {v3, v8, v8}, Lorg/yaml/snakeyaml/events/SequenceEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v2, v3}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 186
    goto :goto_2

    .line 194
    .local v1, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .restart local v2    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .local v9, "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .local v10, "implicitM":Z
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 195
    .local v4, "row":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v5

    .line 196
    .local v5, "key":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-virtual {v4}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v6

    .line 197
    .local v6, "value":Lorg/yaml/snakeyaml/nodes/Node;
    invoke-direct {p0, v5, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 198
    invoke-direct {p0, v6, v1}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 199
    .end local v4    # "row":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v5    # "key":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v6    # "value":Lorg/yaml/snakeyaml/nodes/Node;
    goto :goto_1

    .line 200
    :cond_3
    iget-object v3, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v4, Lorg/yaml/snakeyaml/events/MappingEndEvent;

    invoke-direct {v4, v8, v8}, Lorg/yaml/snakeyaml/events/MappingEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v3, v4}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 203
    .end local v1    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v2    # "map":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v9    # "implicitTag":Lorg/yaml/snakeyaml/nodes/Tag;
    .end local v10    # "implicitM":Z
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v1, Lorg/yaml/snakeyaml/events/StreamEndEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/yaml/snakeyaml/events/StreamEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 95
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 97
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 98
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    :cond_0
    return-void

    .line 92
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is not opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public open()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v1, Lorg/yaml/snakeyaml/events/StreamStartEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lorg/yaml/snakeyaml/events/StreamStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;)V

    invoke-interface {v0, v1}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 82
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    .line 88
    return-void

    .line 83
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is closed"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is already opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public serialize(Lorg/yaml/snakeyaml/nodes/Node;)V
    .locals 8
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->closed:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v7, Lorg/yaml/snakeyaml/events/DocumentStartEvent;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitStart:Z

    iget-object v5, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useVersion:Lorg/yaml/snakeyaml/DumperOptions$Version;

    iget-object v6, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->useTags:Ljava/util/Map;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lorg/yaml/snakeyaml/events/DocumentStartEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;ZLorg/yaml/snakeyaml/DumperOptions$Version;Ljava/util/Map;)V

    invoke-interface {v0, v7}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 110
    invoke-direct {p0, p1}, Lorg/yaml/snakeyaml/serializer/Serializer;->anchorNode(Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 111
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitRoot:Lorg/yaml/snakeyaml/nodes/Tag;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Lorg/yaml/snakeyaml/nodes/Node;->setTag(Lorg/yaml/snakeyaml/nodes/Tag;)V

    .line 114
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/yaml/snakeyaml/serializer/Serializer;->serializeNode(Lorg/yaml/snakeyaml/nodes/Node;Lorg/yaml/snakeyaml/nodes/Node;)V

    .line 115
    iget-object v1, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->emitter:Lorg/yaml/snakeyaml/emitter/Emitable;

    new-instance v2, Lorg/yaml/snakeyaml/events/DocumentEndEvent;

    iget-boolean v3, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->explicitEnd:Z

    invoke-direct {v2, v0, v0, v3}, Lorg/yaml/snakeyaml/events/DocumentEndEvent;-><init>(Lorg/yaml/snakeyaml/error/Mark;Lorg/yaml/snakeyaml/error/Mark;Z)V

    invoke-interface {v1, v2}, Lorg/yaml/snakeyaml/emitter/Emitable;->emit(Lorg/yaml/snakeyaml/events/Event;)V

    .line 116
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->serializedNodes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 117
    iget-object v0, p0, Lorg/yaml/snakeyaml/serializer/Serializer;->anchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    return-void

    .line 106
    :cond_1
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is closed"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_2
    new-instance v0, Lorg/yaml/snakeyaml/serializer/SerializerException;

    const-string v1, "serializer is not opened"

    invoke-direct {v0, v1}, Lorg/yaml/snakeyaml/serializer/SerializerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
