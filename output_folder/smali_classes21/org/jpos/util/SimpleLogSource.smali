.class public Lorg/jpos/util/SimpleLogSource;
.super Ljava/lang/Object;
.source "SimpleLogSource.java"

# interfaces
.implements Lorg/jpos/util/LogSource;


# instance fields
.field protected logger:Lorg/jpos/util/Logger;

.field protected realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/SimpleLogSource;->logger:Lorg/jpos/util/Logger;

    .line 35
    iput-object v0, p0, Lorg/jpos/util/SimpleLogSource;->realm:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public constructor <init>(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/jpos/util/SimpleLogSource;->setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V

    .line 39
    return-void
.end method


# virtual methods
.method public error(Ljava/lang/String;)V
    .locals 2
    .param p1, "detail"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "error"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 71
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 73
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "error"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 75
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 76
    return-void
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/jpos/util/SimpleLogSource;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lorg/jpos/util/SimpleLogSource;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 2
    .param p1, "detail"    # Ljava/lang/String;

    .line 54
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "info"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 55
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 57
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "info"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 59
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 60
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lorg/jpos/util/SimpleLogSource;->logger:Lorg/jpos/util/Logger;

    .line 42
    iput-object p2, p0, Lorg/jpos/util/SimpleLogSource;->realm:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lorg/jpos/util/SimpleLogSource;->realm:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public warning(Ljava/lang/String;)V
    .locals 2
    .param p1, "detail"    # Ljava/lang/String;

    .line 62
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "warning"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 63
    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 65
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "warning"

    invoke-direct {v0, p0, v1, p1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 67
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 68
    return-void
.end method
