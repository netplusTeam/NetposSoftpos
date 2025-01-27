.class Lcom/sleepycat/persist/impl/RecordOutput;
.super Lcom/sleepycat/bind/tuple/TupleOutput;
.source "RecordOutput.java"

# interfaces
.implements Lcom/sleepycat/persist/impl/EntityOutput;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private catalog:Lcom/sleepycat/persist/impl/Catalog;

.field private rawAccess:Z

.field private visited:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 29
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/persist/impl/Catalog;Z)V
    .locals 1
    .param p1, "catalog"    # Lcom/sleepycat/persist/impl/Catalog;
    .param p2, "rawAccess"    # Z

    .line 40
    invoke-direct {p0}, Lcom/sleepycat/bind/tuple/TupleOutput;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sleepycat/persist/impl/RecordOutput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 42
    iput-boolean p2, p0, Lcom/sleepycat/persist/impl/RecordOutput;->rawAccess:Z

    .line 43
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/persist/impl/RecordOutput;->visited:Ljava/util/Map;

    .line 44
    return-void
.end method


# virtual methods
.method public registerEntity(Ljava/lang/Object;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/Object;

    .line 179
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordOutput;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordOutput;->visited:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordOutput;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public registerPriKeyObject(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordOutput;->visited:Ljava/util/Map;

    const v1, 0x7ffffffe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    return-void
.end method

.method public writeArrayLength(I)V
    .locals 0
    .param p1, "length"    # I

    .line 187
    invoke-virtual {p0, p1}, Lcom/sleepycat/persist/impl/RecordOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 188
    return-void
.end method

.method public writeEnumConstant([Ljava/lang/String;I)V
    .locals 0
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "index"    # I

    .line 194
    invoke-virtual {p0, p2}, Lcom/sleepycat/persist/impl/RecordOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 195
    return-void
.end method

.method public writeKeyObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "fieldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 131
    if-eqz p1, :cond_4

    .line 136
    iget-boolean v0, p0, Lcom/sleepycat/persist/impl/RecordOutput;->rawAccess:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 137
    instance-of v0, p1, Lcom/sleepycat/persist/raw/RawObject;

    if-eqz v0, :cond_0

    .line 138
    move-object v0, p1

    check-cast v0, Lcom/sleepycat/persist/raw/RawObject;

    invoke-virtual {v0}, Lcom/sleepycat/persist/raw/RawObject;->getType()Lcom/sleepycat/persist/raw/RawType;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/persist/impl/Format;

    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    .line 140
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordOutput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 143
    .restart local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 144
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getWrapperFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object p2

    goto :goto_0

    .line 148
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordOutput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 151
    .restart local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_2
    :goto_0
    if-ne p2, v0, :cond_3

    .line 159
    iget-boolean v1, p0, Lcom/sleepycat/persist/impl/RecordOutput;->rawAccess:Z

    invoke-virtual {p2, p1, p0, v1}, Lcom/sleepycat/persist/impl/Format;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    .line 160
    return-void

    .line 152
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The key field object class ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") must be the field\'s declared class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 155
    invoke-virtual {p2}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key field object may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)V
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "fieldFormat"    # Lcom/sleepycat/persist/impl/Format;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/persist/impl/RefreshException;
        }
    .end annotation

    .line 53
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/impl/RecordOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 55
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/persist/impl/RecordOutput;->visited:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 63
    .local v1, "offset":Ljava/lang/Integer;
    const v2, 0x7ffffffd

    if-eqz v1, :cond_2

    .line 64
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    invoke-virtual {p0, v0}, Lcom/sleepycat/persist/impl/RecordOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 69
    return-void

    .line 65
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot embed a reference to a proxied object in the proxy; for example, a collection may not be an element of the collection because collections are proxied"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    iget-boolean v3, p0, Lcom/sleepycat/persist/impl/RecordOutput;->rawAccess:Z

    if-eqz v3, :cond_3

    .line 81
    iget-object v0, p0, Lcom/sleepycat/persist/impl/RecordOutput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    invoke-static {v0, p1, p2}, Lcom/sleepycat/persist/impl/RawAbstractInput;->checkRawType(Lcom/sleepycat/persist/impl/Catalog;Ljava/lang/Object;Lcom/sleepycat/persist/impl/Format;)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .local v0, "format":Lcom/sleepycat/persist/impl/Format;
    goto :goto_0

    .line 89
    .end local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :cond_3
    iget-object v3, p0, Lcom/sleepycat/persist/impl/RecordOutput;->catalog:Lcom/sleepycat/persist/impl/Catalog;

    .line 90
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/sleepycat/persist/impl/Catalog;->getFormat(Ljava/lang/Class;Z)Lcom/sleepycat/persist/impl/Format;

    move-result-object v0

    .line 92
    .restart local v0    # "format":Lcom/sleepycat/persist/impl/Format;
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getProxiedFormat()Lcom/sleepycat/persist/impl/Format;

    move-result-object v3

    if-nez v3, :cond_7

    .line 98
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getEntityFormat()Lcom/sleepycat/persist/impl/ComplexFormat;

    move-result-object v3

    if-nez v3, :cond_6

    .line 109
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->areNestedRefsProhibited()Z

    move-result v3

    .line 110
    .local v3, "prohibitNestedRefs":Z
    invoke-virtual {p0}, Lcom/sleepycat/persist/impl/RecordOutput;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 111
    .local v4, "visitedOffset":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/sleepycat/persist/impl/RecordOutput;->visited:Ljava/util/Map;

    if-eqz v3, :cond_4

    goto :goto_1

    .line 112
    :cond_4
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 111
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sleepycat/persist/impl/RecordOutput;->writePackedInt(I)Lcom/sleepycat/bind/tuple/TupleOutput;

    .line 116
    iget-boolean v2, p0, Lcom/sleepycat/persist/impl/RecordOutput;->rawAccess:Z

    invoke-virtual {v0, p1, p0, v2}, Lcom/sleepycat/persist/impl/Format;->writeObject(Ljava/lang/Object;Lcom/sleepycat/persist/impl/EntityOutput;Z)V

    .line 119
    if-eqz v3, :cond_5

    .line 120
    iget-object v2, p0, Lcom/sleepycat/persist/impl/RecordOutput;->visited:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    :cond_5
    return-void

    .line 99
    .end local v3    # "prohibitNestedRefs":Z
    .end local v4    # "visitedOffset":Ljava/lang/Integer;
    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "References to entities are not allowed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 93
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "May not store proxy classes directly: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 95
    invoke-virtual {v0}, Lcom/sleepycat/persist/impl/Format;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
