.class public Lcom/wutka/dtd/DTDNotation;
.super Ljava/lang/Object;
.source "DTDNotation.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public externalID:Lcom/wutka/dtd/DTDExternalID;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .line 37
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDNotation;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 40
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/wutka/dtd/DTDNotation;

    .line 42
    .local v1, "other":Lcom/wutka/dtd/DTDNotation;
    iget-object v3, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 44
    iget-object v3, v1, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    return v2

    .line 48
    :cond_2
    iget-object v4, v1, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 51
    :cond_3
    iget-object v3, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-nez v3, :cond_4

    .line 53
    iget-object v3, v1, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    if-eqz v3, :cond_5

    return v2

    .line 57
    :cond_4
    iget-object v4, v1, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v3, v4}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    .line 60
    :cond_5
    return v0
.end method

.method public getExternalID()Lcom/wutka/dtd/DTDExternalID;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setExternalID(Lcom/wutka/dtd/DTDExternalID;)V
    .locals 0
    .param p1, "theExternalID"    # Lcom/wutka/dtd/DTDExternalID;

    .line 78
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    .line 79
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "aName"    # Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    .line 67
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

    .line 28
    const-string v0, "<!NOTATION "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/wutka/dtd/DTDNotation;->externalID:Lcom/wutka/dtd/DTDExternalID;

    invoke-virtual {v0, p1}, Lcom/wutka/dtd/DTDExternalID;->write(Ljava/io/PrintWriter;)V

    .line 32
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    return-void
.end method
