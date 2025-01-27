.class public Lcom/wutka/dtd/DTDName;
.super Lcom/wutka/dtd/DTDItem;
.source "DTDName.java"


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/wutka/dtd/DTDItem;-><init>()V

    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .line 19
    invoke-direct {p0}, Lcom/wutka/dtd/DTDItem;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .line 33
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDName;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 37
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/wutka/dtd/DTDName;

    .line 39
    .local v1, "other":Lcom/wutka/dtd/DTDName;
    iget-object v3, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 41
    iget-object v3, v1, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v2

    .line 45
    :cond_3
    iget-object v4, v1, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 47
    :cond_4
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "aValue"    # Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/wutka/dtd/DTDName;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDCardinal;->write(Ljava/io/PrintWriter;)V

    .line 29
    return-void
.end method
