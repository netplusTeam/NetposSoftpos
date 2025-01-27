.class public Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;
.super Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
.source "ThrowableDeserializer.java"


# static fields
.field protected static final PROP_NAME_MESSAGE:Ljava/lang/String; = "message"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;)V
    .locals 1
    .param p1, "baseDeserializer"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;

    .line 30
    invoke-direct {p0, p1}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_vanillaProcessing:Z

    .line 33
    return-void
.end method

.method protected constructor <init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V
    .locals 0
    .param p1, "src"    # Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;
    .param p2, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializerBase;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    .line 40
    return-void
.end method


# virtual methods
.method public deserializeFromObject(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "ctxt"    # Lcom/fasterxml/jackson/databind/DeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_propertyBasedCreator:Lcom/fasterxml/jackson/databind/deser/impl/PropertyBasedCreator;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_deserializeUsingPropertyBased(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    iget-object v1, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_delegateDeserializer:Lcom/fasterxml/jackson/databind/JsonDeserializer;

    .line 69
    invoke-virtual {v1, p1, p2}, Lcom/fasterxml/jackson/databind/JsonDeserializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 68
    invoke-virtual {v0, p2, v1}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDelegate(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanType:Lcom/fasterxml/jackson/databind/JavaType;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JavaType;->isAbstract()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v4

    new-array v7, v1, [Ljava/lang/Object;

    const-string v6, "abstract type (need to add/enable type information?)"

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateFromString()Z

    move-result v0

    .line 76
    .local v0, "hasStringCreator":Z
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->canCreateUsingDefault()Z

    move-result v2

    .line 78
    .local v2, "hasDefaultCtor":Z
    if-nez v0, :cond_3

    if-nez v2, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->handledType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->getValueInstantiator()Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    move-result-object v5

    new-array v8, v1, [Ljava/lang/Object;

    const-string v7, "Throwable needs a default constructor, a single-String-arg constructor; or explicit @JsonCreator"

    move-object v3, p2

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Lcom/fasterxml/jackson/databind/DeserializationContext;->handleMissingInstantiator(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 83
    :cond_3
    const/4 v1, 0x0

    .line 84
    .local v1, "throwable":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 85
    .local v3, "pending":[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 87
    .local v4, "pendingIx":I
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v5, v6, :cond_c

    .line 88
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "propName":Ljava/lang/String;
    iget-object v6, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v6, v5}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->find(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    move-result-object v6

    .line 90
    .local v6, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 92
    if-eqz v6, :cond_6

    .line 93
    if-eqz v1, :cond_4

    .line 94
    invoke-virtual {v6, p1, p2, v1}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;)V

    .line 95
    goto :goto_2

    .line 98
    :cond_4
    if-nez v3, :cond_5

    .line 99
    iget-object v7, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_beanProperties:Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;

    invoke-virtual {v7}, Lcom/fasterxml/jackson/databind/deser/impl/BeanPropertyMap;->size()I

    move-result v7

    .line 100
    .local v7, "len":I
    add-int v8, v7, v7

    new-array v3, v8, [Ljava/lang/Object;

    .line 102
    .end local v7    # "len":I
    :cond_5
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "pendingIx":I
    .local v7, "pendingIx":I
    aput-object v6, v3, v4

    .line 103
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "pendingIx":I
    .restart local v4    # "pendingIx":I
    invoke-virtual {v6, p1, p2}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v7

    .line 104
    goto :goto_2

    .line 108
    :cond_6
    const-string v7, "message"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 109
    .local v7, "isMessage":Z
    if-eqz v7, :cond_8

    .line 110
    if-eqz v0, :cond_8

    .line 111
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getValueAsString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, p2, v9}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 113
    if-eqz v3, :cond_b

    .line 114
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v4

    .local v9, "len":I
    :goto_1
    if-ge v8, v9, :cond_7

    .line 115
    aget-object v10, v3, v8

    move-object v6, v10

    check-cast v6, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 116
    add-int/lit8 v10, v8, 0x1

    aget-object v10, v3, v10

    invoke-virtual {v6, v1, v10}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 114
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 118
    .end local v8    # "i":I
    .end local v9    # "len":I
    :cond_7
    const/4 v3, 0x0

    goto :goto_2

    .line 124
    :cond_8
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_ignorableProps:Ljava/util/Set;

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_ignorableProps:Ljava/util/Set;

    invoke-interface {v8, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 125
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    .line 126
    goto :goto_2

    .line 128
    :cond_9
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    if-eqz v8, :cond_a

    .line 129
    iget-object v8, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_anySetter:Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;

    invoke-virtual {v8, p1, p2, v1, v5}, Lcom/fasterxml/jackson/databind/deser/SettableAnyProperty;->deserializeAndSet(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    goto :goto_2

    .line 136
    :cond_a
    invoke-virtual {p0, p1, p2, v1, v5}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->handleUnknownProperty(Lcom/fasterxml/jackson/core/JsonParser;Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .end local v5    # "propName":Ljava/lang/String;
    .end local v6    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    .end local v7    # "isMessage":Z
    :cond_b
    :goto_2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    goto/16 :goto_0

    .line 139
    :cond_c
    if-nez v1, :cond_e

    .line 146
    if-eqz v0, :cond_d

    .line 147
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    const/4 v6, 0x0

    invoke-virtual {v5, p2, v6}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createFromString(Lcom/fasterxml/jackson/databind/DeserializationContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_3

    .line 149
    :cond_d
    iget-object v5, p0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;->_valueInstantiator:Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;

    invoke-virtual {v5, p2}, Lcom/fasterxml/jackson/databind/deser/ValueInstantiator;->createUsingDefault(Lcom/fasterxml/jackson/databind/DeserializationContext;)Ljava/lang/Object;

    move-result-object v1

    .line 152
    :goto_3
    if-eqz v3, :cond_e

    .line 153
    const/4 v5, 0x0

    .local v5, "i":I
    move v6, v4

    .local v6, "len":I
    :goto_4
    if-ge v5, v6, :cond_e

    .line 154
    aget-object v7, v3, v5

    check-cast v7, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;

    .line 155
    .local v7, "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v8, v5, 0x1

    aget-object v8, v3, v8

    invoke-virtual {v7, v1, v8}, Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    .end local v7    # "prop":Lcom/fasterxml/jackson/databind/deser/SettableBeanProperty;
    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    .line 159
    .end local v5    # "i":I
    .end local v6    # "len":I
    :cond_e
    return-object v1
.end method

.method public unwrappingDeserializer(Lcom/fasterxml/jackson/databind/util/NameTransformer;)Lcom/fasterxml/jackson/databind/JsonDeserializer;
    .locals 2
    .param p1, "unwrapper"    # Lcom/fasterxml/jackson/databind/util/NameTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/util/NameTransformer;",
            ")",
            "Lcom/fasterxml/jackson/databind/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    if-eq v0, v1, :cond_0

    .line 45
    return-object p0

    .line 51
    :cond_0
    new-instance v0, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/deser/std/ThrowableDeserializer;-><init>(Lcom/fasterxml/jackson/databind/deser/BeanDeserializer;Lcom/fasterxml/jackson/databind/util/NameTransformer;)V

    return-object v0
.end method
