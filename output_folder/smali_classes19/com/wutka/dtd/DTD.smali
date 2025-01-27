.class public Lcom/wutka/dtd/DTD;
.super Ljava/lang/Object;
.source "DTD.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public elements:Ljava/util/Hashtable;

.field public entities:Ljava/util/Hashtable;

.field public externalDTDs:Ljava/util/Hashtable;

.field public items:Ljava/util/Vector;

.field public notations:Ljava/util/Hashtable;

.field public rootElement:Lcom/wutka/dtd/DTDElement;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTD;->elements:Ljava/util/Hashtable;

    .line 38
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTD;->entities:Ljava/util/Hashtable;

    .line 39
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTD;->notations:Ljava/util/Hashtable;

    .line 40
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTD;->externalDTDs:Ljava/util/Hashtable;

    .line 41
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    .line 42
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "ob"    # Ljava/lang/Object;

    .line 64
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    instance-of v0, p1, Lcom/wutka/dtd/DTD;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 68
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/wutka/dtd/DTD;

    .line 70
    .local v0, "otherDTD":Lcom/wutka/dtd/DTD;
    iget-object v1, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    iget-object v2, v0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .line 98
    iget-object v0, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItems()[Ljava/lang/Object;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemsByType(Ljava/lang/Class;)Ljava/util/Vector;
    .locals 4
    .param p1, "itemType"    # Ljava/lang/Class;

    .line 104
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 106
    .local v0, "results":Ljava/util/Vector;
    iget-object v1, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 108
    .local v1, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 112
    .local v2, "ob":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 116
    .end local v2    # "ob":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    return-object v0
.end method

.method public setItem(Ljava/lang/Object;I)V
    .locals 1
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .line 92
    iget-object v0, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    .line 93
    return-void
.end method

.method public setItems([Ljava/lang/Object;)V
    .locals 3
    .param p1, "newItems"    # [Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/Vector;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "outWriter"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/wutka/dtd/DTD;->items:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 53
    .local v0, "e":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wutka/dtd/DTDOutput;

    .line 57
    .local v1, "item":Lcom/wutka/dtd/DTDOutput;
    invoke-interface {v1, p1}, Lcom/wutka/dtd/DTDOutput;->write(Ljava/io/PrintWriter;)V

    .line 58
    .end local v1    # "item":Lcom/wutka/dtd/DTDOutput;
    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method
