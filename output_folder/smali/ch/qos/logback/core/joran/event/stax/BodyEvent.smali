.class public Lch/qos/logback/core/joran/event/stax/BodyEvent;
.super Lch/qos/logback/core/joran/event/stax/StaxEvent;
.source "BodyEvent.java"


# instance fields
.field private text:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "location"    # Ljavax/xml/stream/Location;

    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lch/qos/logback/core/joran/event/stax/StaxEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .line 24
    iput-object p1, p0, Lch/qos/logback/core/joran/event/stax/BodyEvent;->text:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method append(Ljava/lang/String;)V
    .locals 2
    .param p1, "txt"    # Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/BodyEvent;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/joran/event/stax/BodyEvent;->text:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/BodyEvent;->text:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BodyEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/stax/BodyEvent;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/BodyEvent;->location:Ljavax/xml/stream/Location;

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/BodyEvent;->location:Ljavax/xml/stream/Location;

    invoke-interface {v1}, Ljavax/xml/stream/Location;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
