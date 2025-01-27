.class public Lcom/bea/xml/stream/events/NotationDeclarationEvent;
.super Lcom/bea/xml/stream/events/BaseEvent;
.source "NotationDeclarationEvent.java"

# interfaces
.implements Ljavax/xml/stream/events/NotationDeclaration;


# instance fields
.field protected final name:Ljava/lang/String;

.field protected final publicId:Ljava/lang/String;

.field protected final systemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "publicId"    # Ljava/lang/String;
    .param p3, "systemId"    # Ljava/lang/String;

    .line 22
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/bea/xml/stream/events/BaseEvent;-><init>(I)V

    .line 23
    iput-object p1, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->name:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected doWriteAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    const-string v0, "<!NOTATION "

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    const/16 v1, 0x22

    if-eqz v0, :cond_0

    .line 46
    const-string v0, " PUBLIC \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 50
    const-string v0, " SYSTEM"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 49
    :cond_1
    :goto_0
    nop

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 53
    const-string v0, " \""

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    .line 57
    :cond_2
    const/16 v0, 0x3e

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(I)V

    .line 58
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->publicId:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/bea/xml/stream/events/NotationDeclarationEvent;->systemId:Ljava/lang/String;

    return-object v0
.end method
