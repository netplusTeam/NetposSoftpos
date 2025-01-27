.class public abstract Lcom/wutka/dtd/DTDExternalID;
.super Ljava/lang/Object;
.source "DTDExternalID.java"

# interfaces
.implements Lcom/wutka/dtd/DTDOutput;


# instance fields
.field public system:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "ob"    # Ljava/lang/Object;

    .line 24
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 25
    :cond_0
    instance-of v1, p1, Lcom/wutka/dtd/DTDExternalID;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 27
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/wutka/dtd/DTDExternalID;

    .line 29
    .local v1, "other":Lcom/wutka/dtd/DTDExternalID;
    iget-object v3, p0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 31
    iget-object v3, v1, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    if-eqz v3, :cond_3

    return v2

    .line 35
    :cond_2
    iget-object v4, v1, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    .line 38
    :cond_3
    return v0
.end method

.method public getSystem()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    return-object v0
.end method

.method public setSystem(Ljava/lang/String;)V
    .locals 0
    .param p1, "aSystem"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/wutka/dtd/DTDExternalID;->system:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public abstract write(Ljava/io/PrintWriter;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
