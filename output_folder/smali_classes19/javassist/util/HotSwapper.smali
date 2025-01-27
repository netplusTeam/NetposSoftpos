.class public Ljavassist/util/HotSwapper;
.super Ljava/lang/Object;
.source "HotSwapper.java"


# static fields
.field private static final HOST_NAME:Ljava/lang/String; = "localhost"

.field private static final TRIGGER_NAME:Ljava/lang/String;


# instance fields
.field private jvm:Lcom/sun/jdi/VirtualMachine;

.field private newClassFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/sun/jdi/ReferenceType;",
            "[B>;"
        }
    .end annotation
.end field

.field private request:Lcom/sun/jdi/request/MethodEntryRequest;

.field private trigger:Ljavassist/util/Trigger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-class v0, Ljavassist/util/Trigger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavassist/util/HotSwapper;->TRIGGER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/jdi/connect/IllegalConnectorArgumentsException;
        }
    .end annotation

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavassist/util/HotSwapper;-><init>(Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "port"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/jdi/connect/IllegalConnectorArgumentsException;
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    .line 123
    iput-object v0, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    .line 124
    iput-object v0, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 125
    new-instance v0, Ljavassist/util/Trigger;

    invoke-direct {v0}, Ljavassist/util/Trigger;-><init>()V

    iput-object v0, p0, Ljavassist/util/HotSwapper;->trigger:Ljavassist/util/Trigger;

    .line 126
    nop

    .line 127
    const-string v0, "com.sun.jdi.SocketAttach"

    invoke-direct {p0, v0}, Ljavassist/util/HotSwapper;->findConnector(Ljava/lang/String;)Lcom/sun/jdi/connect/Connector;

    move-result-object v0

    check-cast v0, Lcom/sun/jdi/connect/AttachingConnector;

    .line 129
    .local v0, "connector":Lcom/sun/jdi/connect/AttachingConnector;
    invoke-interface {v0}, Lcom/sun/jdi/connect/AttachingConnector;->defaultArguments()Ljava/util/Map;

    move-result-object v1

    .line 130
    .local v1, "arguments":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/sun/jdi/connect/Connector$Argument;>;"
    const-string v2, "hostname"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jdi/connect/Connector$Argument;

    const-string v3, "localhost"

    invoke-interface {v2, v3}, Lcom/sun/jdi/connect/Connector$Argument;->setValue(Ljava/lang/String;)V

    .line 131
    const-string v2, "port"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jdi/connect/Connector$Argument;

    invoke-interface {v2, p1}, Lcom/sun/jdi/connect/Connector$Argument;->setValue(Ljava/lang/String;)V

    .line 132
    invoke-interface {v0, v1}, Lcom/sun/jdi/connect/AttachingConnector;->attach(Ljava/util/Map;)Lcom/sun/jdi/VirtualMachine;

    move-result-object v2

    iput-object v2, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    .line 133
    invoke-interface {v2}, Lcom/sun/jdi/VirtualMachine;->eventRequestManager()Lcom/sun/jdi/request/EventRequestManager;

    move-result-object v2

    .line 134
    .local v2, "manager":Lcom/sun/jdi/request/EventRequestManager;
    sget-object v3, Ljavassist/util/HotSwapper;->TRIGGER_NAME:Ljava/lang/String;

    invoke-static {v2, v3}, Ljavassist/util/HotSwapper;->methodEntryRequests(Lcom/sun/jdi/request/EventRequestManager;Ljava/lang/String;)Lcom/sun/jdi/request/MethodEntryRequest;

    move-result-object v3

    iput-object v3, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    .line 135
    return-void
.end method

.method private deleteEventRequest(Lcom/sun/jdi/request/EventRequestManager;Lcom/sun/jdi/request/MethodEntryRequest;)V
    .locals 0
    .param p1, "manager"    # Lcom/sun/jdi/request/EventRequestManager;
    .param p2, "request"    # Lcom/sun/jdi/request/MethodEntryRequest;

    .line 161
    invoke-interface {p1, p2}, Lcom/sun/jdi/request/EventRequestManager;->deleteEventRequest(Lcom/sun/jdi/request/EventRequest;)V

    .line 162
    return-void
.end method

.method private findConnector(Ljava/lang/String;)Lcom/sun/jdi/connect/Connector;
    .locals 4
    .param p1, "connector"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/sun/jdi/Bootstrap;->virtualMachineManager()Lcom/sun/jdi/VirtualMachineManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sun/jdi/VirtualMachineManager;->allConnectors()Ljava/util/List;

    move-result-object v0

    .line 140
    .local v0, "connectors":Ljava/util/List;, "Ljava/util/List<Lcom/sun/jdi/connect/Connector;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/jdi/connect/Connector;

    .line 141
    .local v2, "con":Lcom/sun/jdi/connect/Connector;
    invoke-interface {v2}, Lcom/sun/jdi/connect/Connector;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    return-object v2

    .line 141
    .end local v2    # "con":Lcom/sun/jdi/connect/Connector;
    :cond_0
    goto :goto_0

    .line 144
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static methodEntryRequests(Lcom/sun/jdi/request/EventRequestManager;Ljava/lang/String;)Lcom/sun/jdi/request/MethodEntryRequest;
    .locals 2
    .param p0, "manager"    # Lcom/sun/jdi/request/EventRequestManager;
    .param p1, "classpattern"    # Ljava/lang/String;

    .line 150
    invoke-interface {p0}, Lcom/sun/jdi/request/EventRequestManager;->createMethodEntryRequest()Lcom/sun/jdi/request/MethodEntryRequest;

    move-result-object v0

    .line 151
    .local v0, "mereq":Lcom/sun/jdi/request/MethodEntryRequest;
    invoke-interface {v0, p1}, Lcom/sun/jdi/request/MethodEntryRequest;->addClassFilter(Ljava/lang/String;)V

    .line 152
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sun/jdi/request/MethodEntryRequest;->setSuspendPolicy(I)V

    .line 153
    return-object v0
.end method

.method private reload2(Ljava/util/Map;Ljava/lang/String;)V
    .locals 5
    .param p2, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/sun/jdi/ReferenceType;",
            "[B>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 205
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    iget-object v0, p0, Ljavassist/util/HotSwapper;->trigger:Ljavassist/util/Trigger;

    monitor-enter v0

    .line 206
    :try_start_0
    invoke-direct {p0}, Ljavassist/util/HotSwapper;->startDaemon()V

    .line 207
    iput-object p1, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 208
    iget-object v1, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    invoke-interface {v1}, Lcom/sun/jdi/request/MethodEntryRequest;->enable()V

    .line 209
    iget-object v1, p0, Ljavassist/util/HotSwapper;->trigger:Ljavassist/util/Trigger;

    invoke-virtual {v1}, Ljavassist/util/Trigger;->doSwap()V

    .line 210
    iget-object v1, p0, Ljavassist/util/HotSwapper;->request:Lcom/sun/jdi/request/MethodEntryRequest;

    invoke-interface {v1}, Lcom/sun/jdi/request/MethodEntryRequest;->disable()V

    .line 211
    iget-object v1, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 212
    .local v1, "ncf":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    if-nez v1, :cond_0

    .line 216
    .end local v1    # "ncf":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    monitor-exit v0

    .line 217
    return-void

    .line 213
    .restart local v1    # "ncf":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 214
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to reload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    .end local p2    # "msg":Ljava/lang/String;
    throw v2

    .line 216
    .end local v1    # "ncf":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    .restart local p1    # "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    .restart local p2    # "msg":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private startDaemon()V
    .locals 1

    .line 220
    new-instance v0, Ljavassist/util/HotSwapper$1;

    invoke-direct {v0, p0}, Ljavassist/util/HotSwapper$1;-><init>(Ljavassist/util/HotSwapper;)V

    .line 251
    invoke-virtual {v0}, Ljavassist/util/HotSwapper$1;->start()V

    .line 252
    return-void
.end method

.method private toRefType(Ljava/lang/String;)Lcom/sun/jdi/ReferenceType;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    invoke-interface {v0, p1}, Lcom/sun/jdi/VirtualMachine;->classesByName(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 199
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sun/jdi/ReferenceType;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 201
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jdi/ReferenceType;

    return-object v1

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method hotswap()V
    .locals 2

    .line 260
    iget-object v0, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 261
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    iget-object v1, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    invoke-interface {v1, v0}, Lcom/sun/jdi/VirtualMachine;->redefineClasses(Ljava/util/Map;)V

    .line 262
    const/4 v1, 0x0

    iput-object v1, p0, Ljavassist/util/HotSwapper;->newClassFiles:Ljava/util/Map;

    .line 263
    return-void
.end method

.method public reload(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "classFile"    # [B

    .line 171
    invoke-direct {p0, p1}, Ljavassist/util/HotSwapper;->toRefType(Ljava/lang/String;)Lcom/sun/jdi/ReferenceType;

    move-result-object v0

    .line 172
    .local v0, "classtype":Lcom/sun/jdi/ReferenceType;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 173
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0, v1, p1}, Ljavassist/util/HotSwapper;->reload2(Ljava/util/Map;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method public reload(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;)V"
        }
    .end annotation

    .line 186
    .local p1, "classFiles":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/sun/jdi/ReferenceType;[B>;"
    const/4 v1, 0x0

    .line 188
    .local v1, "className":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 189
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Ljava/lang/String;

    .line 190
    invoke-direct {p0, v1}, Ljavassist/util/HotSwapper;->toRefType(Ljava/lang/String;)Lcom/sun/jdi/ReferenceType;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    goto :goto_0

    .line 193
    :cond_0
    if-eqz v1, :cond_1

    .line 194
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " etc."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Ljavassist/util/HotSwapper;->reload2(Ljava/util/Map;Ljava/lang/String;)V

    .line 195
    :cond_1
    return-void
.end method

.method waitEvent()Lcom/sun/jdi/event/EventSet;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Ljavassist/util/HotSwapper;->jvm:Lcom/sun/jdi/VirtualMachine;

    invoke-interface {v0}, Lcom/sun/jdi/VirtualMachine;->eventQueue()Lcom/sun/jdi/event/EventQueue;

    move-result-object v0

    .line 256
    .local v0, "queue":Lcom/sun/jdi/event/EventQueue;
    invoke-interface {v0}, Lcom/sun/jdi/event/EventQueue;->remove()Lcom/sun/jdi/event/EventSet;

    move-result-object v1

    return-object v1
.end method
