.class public Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;
.super Ljava/lang/Object;
.source "Constructor.java"

# interfaces
.implements Lorg/yaml/snakeyaml/constructor/Construct;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/yaml/snakeyaml/constructor/Constructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConstructMapping"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/yaml/snakeyaml/constructor/Constructor;


# direct methods
.method protected constructor <init>(Lorg/yaml/snakeyaml/constructor/Constructor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/yaml/snakeyaml/constructor/Constructor;

    .line 141
    iput-object p1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private newInstance(Lorg/yaml/snakeyaml/TypeDescription;Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 2
    .param p1, "memberDescription"    # Lorg/yaml/snakeyaml/TypeDescription;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 300
    invoke-virtual {p1, p2, p3}, Lorg/yaml/snakeyaml/TypeDescription;->newInstance(Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    .line 301
    .local v0, "newInstance":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 302
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v1, v1, Lorg/yaml/snakeyaml/constructor/Constructor;->constructedObjects:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, p3}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObjectNoCheck(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 305
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, p3}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public construct(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;

    .line 153
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 154
    .local v0, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    const-class v1, Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 155
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->newMap(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Map;

    move-result-object v1

    return-object v1

    .line 160
    :cond_1
    const-class v1, Ljava/util/Collection;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 162
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->newSet(Lorg/yaml/snakeyaml/nodes/CollectionNode;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 164
    :cond_2
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet(Lorg/yaml/snakeyaml/nodes/MappingNode;)Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 167
    :cond_3
    iget-object v1, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v1, v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->newInstance(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v1

    .line 168
    .local v1, "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->isTwoStepsConstruction()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 169
    return-object v1

    .line 171
    :cond_4
    invoke-virtual {p0, v0, v1}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public construct2ndStep(Lorg/yaml/snakeyaml/nodes/Node;Ljava/lang/Object;)V
    .locals 3
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/Node;
    .param p2, "object"    # Ljava/lang/Object;

    .line 178
    const-class v0, Ljava/util/Map;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object v2, p2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructMapping2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Map;)V

    goto :goto_0

    .line 180
    :cond_0
    const-class v0, Ljava/util/Set;

    invoke-virtual {p1}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object v1, p1

    check-cast v1, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object v2, p2

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructSet2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/util/Set;)V

    goto :goto_0

    .line 183
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/yaml/snakeyaml/nodes/MappingNode;

    invoke-virtual {p0, v0, p2}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_0
    return-void
.end method

.method protected constructJavaBean2ndStep(Lorg/yaml/snakeyaml/nodes/MappingNode;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19
    .param p1, "node"    # Lorg/yaml/snakeyaml/nodes/MappingNode;
    .param p2, "object"    # Ljava/lang/Object;

    .line 212
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Lorg/yaml/snakeyaml/constructor/Constructor;->flattenMapping(Lorg/yaml/snakeyaml/nodes/MappingNode;)V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 214
    .local v4, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getValue()Ljava/util/List;

    move-result-object v5

    .line 215
    .local v5, "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/yaml/snakeyaml/nodes/NodeTuple;

    .line 217
    .local v6, "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v7

    instance-of v7, v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    if-eqz v7, :cond_e

    .line 219
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v7

    check-cast v7, Lorg/yaml/snakeyaml/nodes/ScalarNode;

    .line 224
    .local v7, "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getValueNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v8

    .line 226
    .local v8, "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    const-class v9, Ljava/lang/String;

    invoke-virtual {v7, v9}, Lorg/yaml/snakeyaml/nodes/ScalarNode;->setType(Ljava/lang/Class;)V

    .line 227
    iget-object v9, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v9, v7}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 229
    .local v9, "key":Ljava/lang/String;
    :try_start_0
    iget-object v10, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    iget-object v10, v10, Lorg/yaml/snakeyaml/constructor/Constructor;->typeDefinitions:Ljava/util/Map;

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/yaml/snakeyaml/TypeDescription;

    .line 230
    .local v10, "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    if-nez v10, :cond_0

    invoke-virtual {v1, v4, v9}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v11

    goto :goto_1

    .line 231
    :cond_0
    invoke-virtual {v10, v9}, Lorg/yaml/snakeyaml/TypeDescription;->getProperty(Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v11

    :goto_1
    nop

    .line 233
    .local v11, "property":Lorg/yaml/snakeyaml/introspector/Property;
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/introspector/Property;->isWritable()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 238
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v8, v12}, Lorg/yaml/snakeyaml/nodes/Node;->setType(Ljava/lang/Class;)V

    .line 239
    if-eqz v10, :cond_1

    .line 240
    invoke-virtual {v10, v9, v8}, Lorg/yaml/snakeyaml/TypeDescription;->setupPropertyType(Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Z

    move-result v13

    goto :goto_2

    :cond_1
    const/4 v13, 0x0

    .line 242
    .local v13, "typeDetected":Z
    :goto_2
    if-nez v13, :cond_6

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v14

    sget-object v15, Lorg/yaml/snakeyaml/nodes/NodeId;->scalar:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-eq v14, v15, :cond_6

    .line 244
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/introspector/Property;->getActualTypeArguments()[Ljava/lang/Class;

    move-result-object v14

    .line 245
    .local v14, "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v14, :cond_5

    array-length v15, v14

    if-lez v15, :cond_5

    .line 248
    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getNodeId()Lorg/yaml/snakeyaml/nodes/NodeId;

    move-result-object v15

    sget-object v12, Lorg/yaml/snakeyaml/nodes/NodeId;->sequence:Lorg/yaml/snakeyaml/nodes/NodeId;

    if-ne v15, v12, :cond_2

    .line 249
    const/4 v12, 0x0

    aget-object v12, v14, v12

    .line 250
    .local v12, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v15, v8

    check-cast v15, Lorg/yaml/snakeyaml/nodes/SequenceNode;

    .line 251
    .local v15, "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    invoke-virtual {v15, v12}, Lorg/yaml/snakeyaml/nodes/SequenceNode;->setListType(Ljava/lang/Class;)V

    .line 252
    .end local v12    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "snode":Lorg/yaml/snakeyaml/nodes/SequenceNode;
    move-object/from16 v17, v0

    goto :goto_4

    :cond_2
    const-class v12, Ljava/util/Set;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 253
    const/4 v12, 0x0

    aget-object v12, v14, v12

    .line 254
    .restart local v12    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, v8

    check-cast v16, Lorg/yaml/snakeyaml/nodes/MappingNode;

    move-object/from16 v17, v16

    .line 255
    .local v17, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    move-object/from16 v15, v17

    .end local v17    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .local v15, "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v15, v12}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setOnlyKeyType(Ljava/lang/Class;)V

    .line 256
    move-object/from16 v17, v0

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setUseClassConstructor(Ljava/lang/Boolean;)V

    .end local v12    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    goto :goto_3

    .line 257
    :cond_3
    move-object/from16 v17, v0

    const-class v0, Ljava/util/Map;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 258
    const/4 v0, 0x0

    aget-object v0, v14, v0

    .line 259
    .local v0, "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v12, 0x1

    aget-object v15, v14, v12

    move-object v12, v15

    .line 260
    .local v12, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v15, v8

    check-cast v15, Lorg/yaml/snakeyaml/nodes/MappingNode;

    .line 261
    .restart local v15    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    invoke-virtual {v15, v0, v12}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setTypes(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 262
    move-object/from16 v18, v0

    const/16 v16, 0x1

    .end local v0    # "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v0}, Lorg/yaml/snakeyaml/nodes/MappingNode;->setUseClassConstructor(Ljava/lang/Boolean;)V

    goto :goto_4

    .line 257
    .end local v12    # "valueType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v15    # "mnode":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local v18    # "ketType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    :goto_3
    goto :goto_4

    .line 245
    :cond_5
    move-object/from16 v17, v0

    goto :goto_4

    .line 242
    .end local v14    # "arguments":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_6
    move-object/from16 v17, v0

    .line 267
    :goto_4
    if-eqz v10, :cond_7

    .line 268
    invoke-direct {v1, v10, v9, v8}, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->newInstance(Lorg/yaml/snakeyaml/TypeDescription;Ljava/lang/String;Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_5

    :cond_7
    iget-object v0, v1, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    .line 269
    invoke-virtual {v0, v8}, Lorg/yaml/snakeyaml/constructor/Constructor;->constructObject(Lorg/yaml/snakeyaml/nodes/Node;)Ljava/lang/Object;

    move-result-object v0

    :goto_5
    nop

    .line 272
    .local v0, "value":Ljava/lang/Object;
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v12

    sget-object v14, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq v12, v14, :cond_8

    invoke-virtual {v11}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v14, Ljava/lang/Float;

    if-ne v12, v14, :cond_9

    .line 273
    :cond_8
    instance-of v12, v0, Ljava/lang/Double;

    if-eqz v12, :cond_9

    .line 274
    move-object v12, v0

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->floatValue()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    move-object v0, v12

    .line 278
    :cond_9
    invoke-virtual {v11}, Lorg/yaml/snakeyaml/introspector/Property;->getType()Ljava/lang/Class;

    move-result-object v12

    const-class v14, Ljava/lang/String;

    if-ne v12, v14, :cond_a

    sget-object v12, Lorg/yaml/snakeyaml/nodes/Tag;->BINARY:Lorg/yaml/snakeyaml/nodes/Tag;

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getTag()Lorg/yaml/snakeyaml/nodes/Tag;

    move-result-object v14

    invoke-virtual {v12, v14}, Lorg/yaml/snakeyaml/nodes/Tag;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    instance-of v12, v0, [B

    if-eqz v12, :cond_a

    .line 280
    new-instance v12, Ljava/lang/String;

    move-object v14, v0

    check-cast v14, [B

    check-cast v14, [B

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>([B)V

    move-object v0, v12

    .line 283
    :cond_a
    if-eqz v10, :cond_b

    .line 284
    invoke-virtual {v10, v2, v9, v0}, Lorg/yaml/snakeyaml/TypeDescription;->setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_c

    .line 285
    :cond_b
    invoke-virtual {v11, v2, v0}, Lorg/yaml/snakeyaml/introspector/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    .end local v0    # "value":Ljava/lang/Object;
    .end local v10    # "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    .end local v11    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .end local v13    # "typeDetected":Z
    :cond_c
    nop

    .line 294
    .end local v6    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v7    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v8    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v9    # "key":Ljava/lang/String;
    move-object/from16 v0, v17

    goto/16 :goto_0

    .line 234
    .restart local v6    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .restart local v7    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v8    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    .restart local v11    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    :cond_d
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No writable property \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\' on class: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 235
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    .end local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v5    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .end local v6    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .end local v7    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v8    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v9    # "key":Ljava/lang/String;
    .end local p1    # "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .end local p2    # "object":Ljava/lang/Object;
    throw v0
    :try_end_0
    .catch Lorg/yaml/snakeyaml/constructor/DuplicateKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v10    # "memberDescription":Lorg/yaml/snakeyaml/TypeDescription;
    .end local v11    # "property":Lorg/yaml/snakeyaml/introspector/Property;
    .restart local v4    # "beanType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .restart local v5    # "nodeValue":Ljava/util/List;, "Ljava/util/List<Lorg/yaml/snakeyaml/nodes/NodeTuple;>;"
    .restart local v6    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    .restart local v7    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .restart local v8    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local p1    # "node":Lorg/yaml/snakeyaml/nodes/MappingNode;
    .restart local p2    # "object":Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object/from16 v18, v0

    .line 290
    .local v18, "e":Ljava/lang/Exception;
    new-instance v0, Lorg/yaml/snakeyaml/constructor/ConstructorException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Cannot create property="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " for JavaBean="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 292
    invoke-virtual/range {p1 .. p1}, Lorg/yaml/snakeyaml/nodes/MappingNode;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v15

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v8}, Lorg/yaml/snakeyaml/nodes/Node;->getStartMark()Lorg/yaml/snakeyaml/error/Mark;

    move-result-object v17

    move-object v13, v0

    invoke-direct/range {v13 .. v18}, Lorg/yaml/snakeyaml/constructor/ConstructorException;-><init>(Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/String;Lorg/yaml/snakeyaml/error/Mark;Ljava/lang/Throwable;)V

    throw v0

    .line 287
    .end local v18    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Lorg/yaml/snakeyaml/constructor/DuplicateKeyException;
    throw v0

    .line 221
    .end local v0    # "e":Lorg/yaml/snakeyaml/constructor/DuplicateKeyException;
    .end local v7    # "keyNode":Lorg/yaml/snakeyaml/nodes/ScalarNode;
    .end local v8    # "valueNode":Lorg/yaml/snakeyaml/nodes/Node;
    .end local v9    # "key":Ljava/lang/String;
    :cond_e
    new-instance v0, Lorg/yaml/snakeyaml/error/YAMLException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Keys must be scalars but found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 222
    invoke-virtual {v6}, Lorg/yaml/snakeyaml/nodes/NodeTuple;->getKeyNode()Lorg/yaml/snakeyaml/nodes/Node;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lorg/yaml/snakeyaml/error/YAMLException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    .end local v6    # "tuple":Lorg/yaml/snakeyaml/nodes/NodeTuple;
    :cond_f
    return-object v2
.end method

.method protected getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/yaml/snakeyaml/introspector/Property;"
        }
    .end annotation

    .line 309
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    iget-object v0, p0, Lorg/yaml/snakeyaml/constructor/Constructor$ConstructMapping;->this$0:Lorg/yaml/snakeyaml/constructor/Constructor;

    invoke-virtual {v0}, Lorg/yaml/snakeyaml/constructor/Constructor;->getPropertyUtils()Lorg/yaml/snakeyaml/introspector/PropertyUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/yaml/snakeyaml/introspector/PropertyUtils;->getProperty(Ljava/lang/Class;Ljava/lang/String;)Lorg/yaml/snakeyaml/introspector/Property;

    move-result-object v0

    return-object v0
.end method
