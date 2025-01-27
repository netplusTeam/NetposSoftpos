.class public Lcom/wutka/dtd/DTDSequence;
.super Lcom/wutka/dtd/DTDContainer;
.source "DTDSequence.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/wutka/dtd/DTDContainer;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "ob"    # Ljava/lang/Object;

    .line 41
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 42
    :cond_0
    instance-of v0, p1, Lcom/wutka/dtd/DTDSequence;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 44
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDContainer;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/wutka/dtd/DTDSequence;->getItemsVec()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    .line 25
    .local v0, "e":Ljava/util/Enumeration;
    const/4 v1, 0x1

    .line 27
    .local v1, "isFirst":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    if-nez v1, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 32
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wutka/dtd/DTDItem;

    .line 33
    .local v2, "item":Lcom/wutka/dtd/DTDItem;
    invoke-virtual {v2, p1}, Lcom/wutka/dtd/DTDItem;->write(Ljava/io/PrintWriter;)V

    .line 34
    .end local v2    # "item":Lcom/wutka/dtd/DTDItem;
    goto :goto_0

    .line 35
    :cond_1
    const-string v2, ")"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 36
    iget-object v2, p0, Lcom/wutka/dtd/DTDSequence;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v2, p1}, Lcom/wutka/dtd/DTDCardinal;->write(Ljava/io/PrintWriter;)V

    .line 37
    return-void
.end method
