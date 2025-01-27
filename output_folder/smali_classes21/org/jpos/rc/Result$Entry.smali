.class public Lorg/jpos/rc/Result$Entry;
.super Ljava/lang/Object;
.source "Result.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/rc/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entry"
.end annotation


# instance fields
.field irc:Lorg/jpos/rc/IRC;

.field message:Ljava/lang/String;

.field source:Ljava/lang/String;

.field type:Lorg/jpos/rc/Result$Type;


# direct methods
.method public constructor <init>(Lorg/jpos/rc/Result$Type;Lorg/jpos/rc/IRC;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Lorg/jpos/rc/Result$Type;
    .param p2, "irc"    # Lorg/jpos/rc/IRC;
    .param p3, "source"    # Ljava/lang/String;
    .param p4, "message"    # Ljava/lang/String;

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    .line 214
    iput-object p2, p0, Lorg/jpos/rc/Result$Entry;->irc:Lorg/jpos/rc/IRC;

    .line 215
    iput-object p3, p0, Lorg/jpos/rc/Result$Entry;->source:Ljava/lang/String;

    .line 216
    iput-object p4, p0, Lorg/jpos/rc/Result$Entry;->message:Ljava/lang/String;

    .line 217
    return-void
.end method


# virtual methods
.method public getIrc()Lorg/jpos/rc/IRC;
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->irc:Lorg/jpos/rc/IRC;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lorg/jpos/rc/Result$Type;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Entry{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/rc/Result$Entry;->type:Lorg/jpos/rc/Result$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", irc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/rc/Result$Entry;->irc:Lorg/jpos/rc/IRC;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", source=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/rc/Result$Entry;->source:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", message=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/jpos/rc/Result$Entry;->message:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
