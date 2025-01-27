.class public abstract Lorg/jpos/tlv/TagSequenceBase;
.super Ljava/lang/Object;
.source "TagSequenceBase.java"

# interfaces
.implements Lorg/jpos/tlv/TagSequence;


# instance fields
.field private final orderedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/jpos/tlv/TagValue;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;

.field private final tagMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->orderedList:Ljava/util/LinkedList;

    .line 42
    const-string v0, "Root"

    iput-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tag:Ljava/lang/String;

    .line 43
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->orderedList:Ljava/util/LinkedList;

    .line 46
    iput-object p1, p0, Lorg/jpos/tlv/TagSequenceBase;->tag:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/jpos/tlv/TagValue;)V
    .locals 3
    .param p1, "tagValue"    # Lorg/jpos/tlv/TagValue;

    monitor-enter p0

    .line 61
    :try_start_0
    invoke-interface {p1}, Lorg/jpos/tlv/TagValue;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "tag":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 63
    .local v1, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jpos/tlv/TagValue;>;"
    if-nez v1, :cond_0

    .line 64
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v1, v2

    .line 65
    iget-object v2, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local p0    # "this":Lorg/jpos/tlv/TagSequenceBase;
    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lorg/jpos/tlv/TagSequenceBase;->orderedList:Ljava/util/LinkedList;

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 60
    .end local v0    # "tag":Ljava/lang/String;
    .end local v1    # "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jpos/tlv/TagValue;>;"
    .end local p1    # "tagValue":Lorg/jpos/tlv/TagValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected abstract createBinaryTagValuePair(Ljava/lang/String;[B)Lorg/jpos/tlv/TagValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method protected abstract createLiteralTagValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/TagValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation
.end method

.method protected abstract createTagValueSequence(Ljava/lang/String;)Lorg/jpos/tlv/TagSequence;
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 103
    .end local p0    # "this":Lorg/jpos/tlv/TagSequenceBase;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue;",
            ">;>;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    iget-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 108
    .end local p0    # "this":Lorg/jpos/tlv/TagSequenceBase;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChildren()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue;",
            ">;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    return-object v0
.end method

.method public declared-synchronized getFirst(Ljava/lang/String;)Lorg/jpos/tlv/TagValue;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 93
    const/4 v0, 0x0

    .line 94
    .local v0, "tagValue":Lorg/jpos/tlv/TagValue;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    invoke-virtual {v1, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 95
    .local v1, "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jpos/tlv/TagValue;>;"
    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v1}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/tlv/TagValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 98
    .end local p0    # "this":Lorg/jpos/tlv/TagSequenceBase;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 92
    .end local v0    # "tagValue":Lorg/jpos/tlv/TagValue;
    .end local v1    # "values":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lorg/jpos/tlv/TagValue;>;"
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getOrderedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/jpos/tlv/TagValue;",
            ">;"
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->orderedList:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized hasTag(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lorg/jpos/tlv/TagSequenceBase;->tagMap:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 83
    .end local p0    # "this":Lorg/jpos/tlv/TagSequenceBase;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isComposite()Z
    .locals 1

    .line 51
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized readFrom(Lorg/jpos/iso/ISOMsg;)V
    .locals 11
    .param p1, "isoMsg"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    monitor-enter p0

    .line 143
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v0

    .line 144
    .local v0, "maxField":I
    const/4 v1, -0x1

    .line 145
    .local v1, "minField":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_1

    .line 146
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    .line 147
    .local v3, "child":Lorg/jpos/iso/ISOComponent;
    instance-of v4, v3, Lorg/jpos/tlv/ISOTaggedField;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 148
    move v1, v2

    .line 149
    goto :goto_1

    .line 145
    .end local v3    # "child":Lorg/jpos/iso/ISOComponent;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    .end local v2    # "i":I
    .end local p0    # "this":Lorg/jpos/tlv/TagSequenceBase;
    :cond_1
    :goto_1
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 154
    monitor-exit p0

    return-void

    .line 156
    :cond_2
    move v2, v1

    .restart local v2    # "i":I
    :goto_2
    if-gt v2, v0, :cond_b

    .line 157
    :try_start_1
    invoke-virtual {p1, v2}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v3

    .line 158
    .restart local v3    # "child":Lorg/jpos/iso/ISOComponent;
    if-eqz v3, :cond_a

    .line 159
    instance-of v4, v3, Lorg/jpos/tlv/ISOTaggedField;

    if-eqz v4, :cond_9

    .line 161
    move-object v4, v3

    check-cast v4, Lorg/jpos/tlv/ISOTaggedField;

    .line 162
    .local v4, "taggedSubField":Lorg/jpos/tlv/ISOTaggedField;
    invoke-virtual {v4}, Lorg/jpos/tlv/ISOTaggedField;->getDelegate()Lorg/jpos/iso/ISOComponent;

    move-result-object v5

    .line 163
    .local v5, "delegate":Lorg/jpos/iso/ISOComponent;
    instance-of v6, v5, Lorg/jpos/iso/ISOMsg;

    if-eqz v6, :cond_6

    .line 164
    invoke-virtual {v5}, Lorg/jpos/iso/ISOComponent;->getChildren()Ljava/util/Map;

    move-result-object v6

    .line 165
    .local v6, "subChildren":Ljava/util/Map;
    const/4 v7, 0x1

    .line 166
    .local v7, "allTaggedValue":Z
    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 167
    .local v9, "subChild":Ljava/lang/Object;
    instance-of v10, v9, Lorg/jpos/tlv/ISOTaggedField;

    if-nez v10, :cond_3

    .line 168
    const/4 v7, 0x0

    .line 169
    goto :goto_4

    .line 171
    .end local v9    # "subChild":Ljava/lang/Object;
    :cond_3
    goto :goto_3

    .line 172
    :cond_4
    :goto_4
    if-eqz v7, :cond_5

    .line 173
    invoke-virtual {v4}, Lorg/jpos/tlv/ISOTaggedField;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/jpos/tlv/TagSequenceBase;->createTagValueSequence(Ljava/lang/String;)Lorg/jpos/tlv/TagSequence;

    move-result-object v8

    .line 174
    .local v8, "tagValue":Lorg/jpos/tlv/TagValue;
    move-object v9, v8

    check-cast v9, Lorg/jpos/tlv/TagSequence;

    move-object v10, v5

    check-cast v10, Lorg/jpos/iso/ISOMsg;

    invoke-interface {v9, v10}, Lorg/jpos/tlv/TagSequence;->readFrom(Lorg/jpos/iso/ISOMsg;)V

    goto :goto_5

    .line 176
    .end local v8    # "tagValue":Lorg/jpos/tlv/TagValue;
    :cond_5
    new-instance v8, Lorg/jpos/tlv/ISOMsgTagValue;

    invoke-virtual {p0}, Lorg/jpos/tlv/TagSequenceBase;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, p1}, Lorg/jpos/tlv/ISOMsgTagValue;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOMsg;)V

    .line 178
    .end local v6    # "subChildren":Ljava/util/Map;
    .end local v7    # "allTaggedValue":Z
    .restart local v8    # "tagValue":Lorg/jpos/tlv/TagValue;
    :goto_5
    goto :goto_6

    .end local v8    # "tagValue":Lorg/jpos/tlv/TagValue;
    :cond_6
    instance-of v6, v5, Lorg/jpos/iso/ISOBinaryField;

    if-eqz v6, :cond_7

    .line 179
    invoke-virtual {v4}, Lorg/jpos/tlv/ISOTaggedField;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jpos/tlv/ISOTaggedField;->getBytes()[B

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/jpos/tlv/TagSequenceBase;->createBinaryTagValuePair(Ljava/lang/String;[B)Lorg/jpos/tlv/TagValue;

    move-result-object v6

    move-object v8, v6

    .restart local v8    # "tagValue":Lorg/jpos/tlv/TagValue;
    goto :goto_6

    .line 180
    .end local v8    # "tagValue":Lorg/jpos/tlv/TagValue;
    :cond_7
    instance-of v6, v5, Lorg/jpos/iso/ISOField;

    if-eqz v6, :cond_8

    .line 181
    invoke-virtual {v4}, Lorg/jpos/tlv/ISOTaggedField;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jpos/tlv/ISOTaggedField;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lorg/jpos/tlv/TagSequenceBase;->createLiteralTagValuePair(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/tlv/TagValue;

    move-result-object v6

    move-object v8, v6

    .line 185
    .restart local v8    # "tagValue":Lorg/jpos/tlv/TagValue;
    :goto_6
    invoke-virtual {p0, v8}, Lorg/jpos/tlv/TagSequenceBase;->add(Lorg/jpos/tlv/TagValue;)V

    .line 186
    .end local v4    # "taggedSubField":Lorg/jpos/tlv/ISOTaggedField;
    .end local v5    # "delegate":Lorg/jpos/iso/ISOComponent;
    .end local v8    # "tagValue":Lorg/jpos/tlv/TagValue;
    goto :goto_7

    .line 183
    .restart local v4    # "taggedSubField":Lorg/jpos/tlv/ISOTaggedField;
    .restart local v5    # "delegate":Lorg/jpos/iso/ISOComponent;
    :cond_8
    new-instance v6, Lorg/jpos/iso/ISOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown ISOComponent subclass in ISOTaggedField: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 187
    .end local v4    # "taggedSubField":Lorg/jpos/tlv/ISOTaggedField;
    .end local v5    # "delegate":Lorg/jpos/iso/ISOComponent;
    :cond_9
    new-instance v4, Lorg/jpos/iso/ISOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Children after first ISOTaggedField should be instance of ISOTaggedField. Field "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an ISOTaggedField"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    .end local v3    # "child":Lorg/jpos/iso/ISOComponent;
    :cond_a
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 193
    .end local v2    # "i":I
    :cond_b
    monitor-exit p0

    return-void

    .line 142
    .end local v0    # "maxField":I
    .end local v1    # "minField":I
    .end local p1    # "isoMsg":Lorg/jpos/iso/ISOMsg;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeTo(Lorg/jpos/iso/ISOMsg;)V
    .locals 9
    .param p1, "isoMsg"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/ISOMsg;->getMaxField()I

    move-result v0

    .line 114
    .local v0, "maxField":I
    invoke-virtual {p0}, Lorg/jpos/tlv/TagSequenceBase;->getOrderedList()Ljava/util/List;

    move-result-object v1

    .line 115
    .local v1, "tagValueList":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/tlv/TagValue;>;"
    const/4 v2, 0x0

    .line 116
    .local v2, "fieldNumber":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/tlv/TagValue;

    .line 117
    .local v4, "tagValue":Lorg/jpos/tlv/TagValue;
    invoke-interface {v4}, Lorg/jpos/tlv/TagValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 118
    .local v5, "value":Ljava/lang/Object;
    if-eqz v5, :cond_4

    .line 120
    instance-of v6, v5, [B

    if-eqz v6, :cond_0

    .line 121
    new-instance v6, Lorg/jpos/iso/ISOBinaryField;

    add-int v7, v2, v0

    add-int/lit8 v7, v7, 0x1

    move-object v8, v5

    check-cast v8, [B

    check-cast v8, [B

    invoke-direct {v6, v7, v8}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[B)V

    .local v6, "subField":Lorg/jpos/iso/ISOComponent;
    goto :goto_1

    .line 122
    .end local v6    # "subField":Lorg/jpos/iso/ISOComponent;
    .end local p0    # "this":Lorg/jpos/tlv/TagSequenceBase;
    :cond_0
    instance-of v6, v5, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 123
    new-instance v6, Lorg/jpos/iso/ISOField;

    add-int v7, v2, v0

    add-int/lit8 v7, v7, 0x1

    move-object v8, v5

    check-cast v8, Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/jpos/iso/ISOField;-><init>(ILjava/lang/String;)V

    .restart local v6    # "subField":Lorg/jpos/iso/ISOComponent;
    goto :goto_1

    .line 124
    .end local v6    # "subField":Lorg/jpos/iso/ISOComponent;
    :cond_1
    instance-of v6, v5, Lorg/jpos/tlv/TagSequence;

    if-eqz v6, :cond_2

    .line 125
    move-object v6, v4

    check-cast v6, Lorg/jpos/tlv/TagSequence;

    .line 126
    .local v6, "subSequence":Lorg/jpos/tlv/TagSequence;
    new-instance v7, Lorg/jpos/iso/ISOMsg;

    add-int v8, v2, v0

    add-int/lit8 v8, v8, 0x1

    invoke-direct {v7, v8}, Lorg/jpos/iso/ISOMsg;-><init>(I)V

    .line 127
    .local v7, "subField":Lorg/jpos/iso/ISOComponent;
    move-object v8, v7

    check-cast v8, Lorg/jpos/iso/ISOMsg;

    invoke-interface {v6, v8}, Lorg/jpos/tlv/TagSequence;->writeTo(Lorg/jpos/iso/ISOMsg;)V

    .line 128
    .end local v6    # "subSequence":Lorg/jpos/tlv/TagSequence;
    move-object v6, v7

    goto :goto_1

    .end local v7    # "subField":Lorg/jpos/iso/ISOComponent;
    :cond_2
    instance-of v6, v5, Lorg/jpos/iso/ISOMsg;

    if-eqz v6, :cond_3

    .line 129
    move-object v6, v4

    check-cast v6, Lorg/jpos/tlv/ISOMsgTagValue;

    .line 130
    .local v6, "subSequence":Lorg/jpos/tlv/ISOMsgTagValue;
    invoke-virtual {v6}, Lorg/jpos/tlv/ISOMsgTagValue;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jpos/iso/ISOComponent;

    .line 131
    .restart local v7    # "subField":Lorg/jpos/iso/ISOComponent;
    add-int v8, v2, v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lorg/jpos/iso/ISOComponent;->setFieldNumber(I)V

    .line 132
    .end local v6    # "subSequence":Lorg/jpos/tlv/ISOMsgTagValue;
    move-object v6, v7

    .line 135
    .end local v7    # "subField":Lorg/jpos/iso/ISOComponent;
    .local v6, "subField":Lorg/jpos/iso/ISOComponent;
    :goto_1
    new-instance v7, Lorg/jpos/tlv/ISOTaggedField;

    invoke-interface {v4}, Lorg/jpos/tlv/TagValue;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Lorg/jpos/tlv/ISOTaggedField;-><init>(Ljava/lang/String;Lorg/jpos/iso/ISOComponent;)V

    invoke-virtual {p1, v7}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_2

    .line 133
    .end local v6    # "subField":Lorg/jpos/iso/ISOComponent;
    :cond_3
    new-instance v3, Lorg/jpos/iso/ISOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown TagValue subclass: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_4
    :goto_2
    nop

    .end local v4    # "tagValue":Lorg/jpos/tlv/TagValue;
    .end local v5    # "value":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    .line 138
    goto/16 :goto_0

    .line 139
    :cond_5
    monitor-exit p0

    return-void

    .line 112
    .end local v0    # "maxField":I
    .end local v1    # "tagValueList":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/tlv/TagValue;>;"
    .end local v2    # "fieldNumber":I
    .end local p1    # "isoMsg":Lorg/jpos/iso/ISOMsg;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
