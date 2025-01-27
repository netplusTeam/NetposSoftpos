.class public Lcom/wutka/dtd/DTDPublic;
.super Lcom/wutka/dtd/DTDExternalID;
.source "DTDPublic.java"


# instance fields
.field public pub:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/wutka/dtd/DTDExternalID;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .line 36
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDPublic;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 39
    :cond_1
    invoke-super {p0, p1}, Lcom/wutka/dtd/DTDExternalID;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 41
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/wutka/dtd/DTDPublic;

    .line 43
    .local v1, "other":Lcom/wutka/dtd/DTDPublic;
    iget-object v3, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 45
    iget-object v3, v1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v2

    .line 49
    :cond_3
    iget-object v4, v1, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 52
    :cond_4
    return v0
.end method

.method public getPub()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    return-object v0
.end method

.method public setPub(Ljava/lang/String;)V
    .locals 0
    .param p1, "aPub"    # Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public write(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    const-string v0, "PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/wutka/dtd/DTDPublic;->pub:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 25
    const-string v0, "\""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 26
    iget-object v1, p0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 28
    const-string v1, " \""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/wutka/dtd/DTDPublic;->system:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void
.end method
