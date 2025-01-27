.class public Lorg/jpos/util/ProtectedLogListener;
.super Ljava/lang/Object;
.source "ProtectedLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;


# static fields
.field public static final BINARY_WIPED:[B

.field public static final WIPED:Ljava/lang/String; = "[WIPED]"


# instance fields
.field cfg:Lorg/jpos/core/Configuration;

.field protectFields:[Ljava/lang/String;

.field wipeFields:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    const-string v0, "AA55AA55"

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/jpos/util/ProtectedLogListener;->BINARY_WIPED:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/ProtectedLogListener;->protectFields:[Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lorg/jpos/util/ProtectedLogListener;->wipeFields:[Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lorg/jpos/util/ProtectedLogListener;->cfg:Lorg/jpos/core/Configuration;

    .line 71
    return-void
.end method

.method private checkHidden(Lorg/jpos/iso/ISOMsg;)V
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lorg/jpos/util/ProtectedLogListener;->wipeFields:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 147
    .local v3, "f":Ljava/lang/String;
    const/4 v4, 0x0

    .line 149
    .local v4, "v":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 152
    goto :goto_1

    .line 150
    :catch_0
    move-exception v5

    .line 153
    :goto_1
    if-eqz v4, :cond_1

    .line 154
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 155
    const-string v5, "[WIPED]"

    invoke-virtual {p1, v3, v5}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 157
    :cond_0
    sget-object v5, Lorg/jpos/util/ProtectedLogListener;->BINARY_WIPED:[B

    invoke-virtual {p1, v3, v5}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;[B)V

    .line 146
    .end local v3    # "f":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_2
    return-void
.end method

.method private checkProtected(Lorg/jpos/iso/ISOMsg;)V
    .locals 6
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lorg/jpos/util/ProtectedLogListener;->protectFields:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 118
    .local v3, "f":Ljava/lang/String;
    const/4 v4, 0x0

    .line 120
    .local v4, "v":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1, v3}, Lorg/jpos/iso/ISOMsg;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 123
    goto :goto_1

    .line 121
    :catch_0
    move-exception v5

    .line 124
    :goto_1
    if-eqz v4, :cond_1

    .line 125
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 126
    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v3, v5}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :cond_0
    sget-object v5, Lorg/jpos/util/ProtectedLogListener;->BINARY_WIPED:[B

    invoke-virtual {p1, v3, v5}, Lorg/jpos/iso/ISOMsg;->set(Ljava/lang/String;[B)V

    .line 117
    .end local v3    # "f":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_2
    return-void
.end method

.method private checkProtected(Lorg/jpos/util/SimpleMsg;)V
    .locals 4
    .param p1, "sm"    # Lorg/jpos/util/SimpleMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 133
    iget-object v0, p1, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    instance-of v0, v0, [Lorg/jpos/util/SimpleMsg;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p1, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    check-cast v0, [Lorg/jpos/util/SimpleMsg;

    check-cast v0, [Lorg/jpos/util/SimpleMsg;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 135
    .local v3, "sMsg":Lorg/jpos/util/SimpleMsg;
    invoke-direct {p0, v3}, Lorg/jpos/util/ProtectedLogListener;->checkProtected(Lorg/jpos/util/SimpleMsg;)V

    .line 134
    .end local v3    # "sMsg":Lorg/jpos/util/SimpleMsg;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p1, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jpos/util/SimpleMsg;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p1, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    check-cast v0, Lorg/jpos/util/SimpleMsg;

    invoke-direct {p0, v0}, Lorg/jpos/util/ProtectedLogListener;->checkProtected(Lorg/jpos/util/SimpleMsg;)V

    goto :goto_1

    .line 138
    :cond_1
    iget-object v0, p1, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jpos/iso/ISOMsg;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p1, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOMsg;

    .line 140
    .local v0, "m":Lorg/jpos/iso/ISOMsg;
    invoke-direct {p0, v0}, Lorg/jpos/util/ProtectedLogListener;->checkProtected(Lorg/jpos/iso/ISOMsg;)V

    .line 141
    invoke-direct {p0, v0}, Lorg/jpos/util/ProtectedLogListener;->checkHidden(Lorg/jpos/iso/ISOMsg;)V

    .line 142
    iput-object v0, p1, Lorg/jpos/util/SimpleMsg;->msgContent:Ljava/lang/Object;

    .line 144
    .end local v0    # "m":Lorg/jpos/iso/ISOMsg;
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 7
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 91
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 92
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v1

    .line 93
    .local v1, "payLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 94
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 96
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lorg/jpos/iso/ISOMsg;

    if-eqz v5, :cond_0

    .line 97
    move-object v5, v4

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v5}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/ISOMsg;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    .local v5, "m":Lorg/jpos/iso/ISOMsg;
    :try_start_1
    invoke-direct {p0, v5}, Lorg/jpos/util/ProtectedLogListener;->checkProtected(Lorg/jpos/iso/ISOMsg;)V

    .line 100
    invoke-direct {p0, v5}, Lorg/jpos/util/ProtectedLogListener;->checkHidden(Lorg/jpos/iso/ISOMsg;)V
    :try_end_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_1

    .line 101
    :catch_0
    move-exception v6

    .line 102
    .local v6, "e":Lorg/jpos/iso/ISOException;
    :try_start_2
    invoke-virtual {p1, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 104
    .end local v6    # "e":Lorg/jpos/iso/ISOException;
    :goto_1
    invoke-interface {v1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 105
    nop

    .end local v5    # "m":Lorg/jpos/iso/ISOMsg;
    goto :goto_2

    :cond_0
    instance-of v5, v4, Lorg/jpos/util/SimpleMsg;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v5, :cond_1

    .line 107
    :try_start_3
    move-object v5, v4

    check-cast v5, Lorg/jpos/util/SimpleMsg;

    invoke-direct {p0, v5}, Lorg/jpos/util/ProtectedLogListener;->checkProtected(Lorg/jpos/util/SimpleMsg;)V
    :try_end_3
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 110
    goto :goto_2

    .line 108
    :catch_1
    move-exception v5

    .line 109
    .local v5, "e":Lorg/jpos/iso/ISOException;
    :try_start_4
    invoke-virtual {p1, v5}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 94
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "e":Lorg/jpos/iso/ISOException;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "payLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 114
    return-object p1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lorg/jpos/util/ProtectedLogListener;->cfg:Lorg/jpos/core/Configuration;

    .line 87
    const-string v0, "protect"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/ProtectedLogListener;->protectFields:[Ljava/lang/String;

    .line 88
    const-string v0, "wipe"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/ProtectedLogListener;->wipeFields:[Ljava/lang/String;

    .line 89
    return-void
.end method
