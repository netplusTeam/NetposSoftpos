.class public abstract Lcom/wutka/dtd/DTDItem;
.super Ljava/lang/Object;
.source "DTDItem.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public cardinal:Lcom/wutka/dtd/DTDCardinal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lcom/wutka/dtd/DTDCardinal;->NONE:Lcom/wutka/dtd/DTDCardinal;

    iput-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/wutka/dtd/DTDCardinal;)V
    .locals 0
    .param p1, "aCardinal"    # Lcom/wutka/dtd/DTDCardinal;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .line 31
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 32
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 34
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/wutka/dtd/DTDItem;

    .line 36
    .local v1, "other":Lcom/wutka/dtd/DTDItem;
    iget-object v3, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    if-nez v3, :cond_2

    .line 38
    iget-object v3, v1, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    if-eqz v3, :cond_3

    return v2

    .line 42
    :cond_2
    iget-object v4, v1, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    invoke-virtual {v3, v4}, Lcom/wutka/dtd/DTDCardinal;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 45
    :cond_3
    return v0
.end method

.method public getCardinal()Lcom/wutka/dtd/DTDCardinal;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    return-object v0
.end method

.method public setCardinal(Lcom/wutka/dtd/DTDCardinal;)V
    .locals 0
    .param p1, "aCardinal"    # Lcom/wutka/dtd/DTDCardinal;

    .line 51
    iput-object p1, p0, Lcom/wutka/dtd/DTDItem;->cardinal:Lcom/wutka/dtd/DTDCardinal;

    .line 52
    return-void
.end method

.method public abstract write(Ljava/io/PrintWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
