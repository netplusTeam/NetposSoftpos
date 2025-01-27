.class public Lorg/jpos/transaction/participant/Debug;
.super Lorg/jpos/util/Log;
.source "Debug.java"

# interfaces
.implements Lorg/jpos/transaction/AbortParticipant;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lorg/jpos/util/Log;-><init>()V

    return-void
.end method

.method private createEvent(Ljava/lang/String;JLorg/jpos/transaction/Context;)Lorg/jpos/util/LogEvent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "id"    # J
    .param p4, "ctx"    # Lorg/jpos/transaction/Context;

    .line 46
    invoke-virtual {p0, p1}, Lorg/jpos/transaction/participant/Debug;->createLogEvent(Ljava/lang/String;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    .line 47
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v0, p4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 49
    new-instance v1, Lorg/jpos/util/FrozenLogEvent;

    invoke-direct {v1, v0}, Lorg/jpos/util/FrozenLogEvent;-><init>(Lorg/jpos/util/LogEvent;)V

    return-object v1
.end method


# virtual methods
.method public abort(JLjava/io/Serializable;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 39
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    const-string v1, "abort"

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/jpos/transaction/participant/Debug;->createEvent(Ljava/lang/String;JLorg/jpos/transaction/Context;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 40
    return-void
.end method

.method public commit(JLjava/io/Serializable;)V
    .locals 2
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 36
    move-object v0, p3

    check-cast v0, Lorg/jpos/transaction/Context;

    const-string v1, "commit"

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/jpos/transaction/participant/Debug;->createEvent(Ljava/lang/String;JLorg/jpos/transaction/Context;)Lorg/jpos/util/LogEvent;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 37
    return-void
.end method

.method public prepare(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 33
    const/16 v0, 0x81

    return v0
.end method

.method public prepareForAbort(JLjava/io/Serializable;)I
    .locals 1
    .param p1, "id"    # J
    .param p3, "o"    # Ljava/io/Serializable;

    .line 43
    const/16 v0, 0x81

    return v0
.end method
