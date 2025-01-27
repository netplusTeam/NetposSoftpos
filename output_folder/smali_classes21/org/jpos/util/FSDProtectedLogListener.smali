.class public Lorg/jpos/util/FSDProtectedLogListener;
.super Ljava/lang/Object;
.source "FSDProtectedLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/Configurable;


# static fields
.field public static final BINARY_WIPED:[B

.field public static final WIPED:Ljava/lang/String; = "[WIPED]"


# instance fields
.field cfg:Lorg/jpos/core/Configuration;

.field protectFields:[Ljava/lang/String;

.field truncateFields:[Ljava/lang/String;

.field wipeFields:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-string v0, "AA55AA55"

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/jpos/util/FSDProtectedLogListener;->BINARY_WIPED:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->protectFields:[Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->wipeFields:[Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->truncateFields:[Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->cfg:Lorg/jpos/core/Configuration;

    .line 77
    return-void
.end method

.method private checkHidden(Lorg/jpos/iso/FSDISOMsg;)V
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/FSDISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->wipeFields:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 158
    .local v3, "f":Ljava/lang/String;
    const/4 v4, 0x0

    .line 160
    .local v4, "v":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 163
    goto :goto_1

    .line 161
    :catch_0
    move-exception v5

    .line 164
    :goto_1
    if-eqz v4, :cond_1

    .line 165
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 166
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v5

    const-string v6, "[WIPED]"

    invoke-virtual {v5, v3, v6}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 168
    :cond_0
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lorg/jpos/util/FSDProtectedLogListener;->BINARY_WIPED:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v3, v6}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .end local v3    # "f":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 171
    :cond_2
    return-void
.end method

.method private checkProtected(Lorg/jpos/iso/FSDISOMsg;)V
    .locals 8
    .param p1, "m"    # Lorg/jpos/iso/FSDISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->protectFields:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 142
    .local v3, "f":Ljava/lang/String;
    const/4 v4, 0x0

    .line 144
    .local v4, "v":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v5

    invoke-virtual {v5, v3}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    .line 147
    goto :goto_1

    .line 145
    :catch_0
    move-exception v5

    .line 148
    :goto_1
    if-eqz v4, :cond_1

    .line 149
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 150
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v5

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lorg/jpos/iso/ISOUtil;->protect(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 152
    :cond_0
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    sget-object v7, Lorg/jpos/util/FSDProtectedLogListener;->BINARY_WIPED:[B

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v3, v6}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v3    # "f":Ljava/lang/String;
    .end local v4    # "v":Ljava/lang/Object;
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_2
    return-void
.end method

.method private checkTruncated(Lorg/jpos/iso/FSDISOMsg;)V
    .locals 12
    .param p1, "m"    # Lorg/jpos/iso/FSDISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->truncateFields:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 121
    .local v4, "truncateField":Ljava/lang/String;
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 122
    .local v5, "truncate":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 123
    aget-object v6, v5, v2

    .line 124
    .local v6, "f":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 125
    .local v7, "len":I
    const/4 v8, 0x0

    .line 127
    .local v8, "v":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v9

    invoke-virtual {v9, v6}, Lorg/jpos/util/FSDMsg;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v9

    .line 130
    goto :goto_1

    .line 128
    :catch_0
    move-exception v9

    .line 131
    :goto_1
    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 132
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 133
    .local v9, "x":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-le v10, v7, :cond_0

    .line 134
    invoke-virtual {p1}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v10

    invoke-virtual {v9, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Lorg/jpos/util/FSDMsg;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .end local v4    # "truncateField":Ljava/lang/String;
    .end local v5    # "truncate":[Ljava/lang/String;
    .end local v6    # "f":Ljava/lang/String;
    .end local v7    # "len":I
    .end local v8    # "v":Ljava/lang/Object;
    .end local v9    # "x":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 7
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 99
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 100
    :try_start_1
    invoke-virtual {p1}, Lorg/jpos/util/LogEvent;->getPayLoad()Ljava/util/List;

    move-result-object v1

    .line 101
    .local v1, "payLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 102
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 103
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 104
    .local v4, "obj":Ljava/lang/Object;
    instance-of v5, v4, Lorg/jpos/iso/FSDISOMsg;

    if-eqz v5, :cond_0

    .line 105
    move-object v5, v4

    check-cast v5, Lorg/jpos/iso/FSDISOMsg;

    invoke-virtual {v5}, Lorg/jpos/iso/FSDISOMsg;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jpos/iso/FSDISOMsg;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .local v5, "m":Lorg/jpos/iso/FSDISOMsg;
    :try_start_2
    invoke-direct {p0, v5}, Lorg/jpos/util/FSDProtectedLogListener;->checkTruncated(Lorg/jpos/iso/FSDISOMsg;)V

    .line 108
    invoke-direct {p0, v5}, Lorg/jpos/util/FSDProtectedLogListener;->checkProtected(Lorg/jpos/iso/FSDISOMsg;)V

    .line 109
    invoke-direct {p0, v5}, Lorg/jpos/util/FSDProtectedLogListener;->checkHidden(Lorg/jpos/iso/FSDISOMsg;)V
    :try_end_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    goto :goto_1

    .line 110
    :catch_0
    move-exception v6

    .line 111
    .local v6, "e":Lorg/jpos/iso/ISOException;
    :try_start_3
    invoke-virtual {p1, v6}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 113
    .end local v6    # "e":Lorg/jpos/iso/ISOException;
    :goto_1
    invoke-interface {v1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 102
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "m":Lorg/jpos/iso/FSDISOMsg;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 116
    .end local v1    # "payLoad":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "size":I
    .end local v3    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 117
    monitor-exit p0

    return-object p1

    .line 116
    :catchall_0
    move-exception v1

    :goto_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .end local p0    # "this":Lorg/jpos/util/FSDProtectedLogListener;
    :catchall_1
    move-exception v1

    goto :goto_2

    .line 98
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lorg/jpos/util/FSDProtectedLogListener;->cfg:Lorg/jpos/core/Configuration;

    .line 94
    const-string v0, "truncate"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->truncateFields:[Ljava/lang/String;

    .line 95
    const-string v0, "protect"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->protectFields:[Ljava/lang/String;

    .line 96
    const-string v0, "wipe"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->toStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/util/FSDProtectedLogListener;->wipeFields:[Ljava/lang/String;

    .line 97
    return-void
.end method
