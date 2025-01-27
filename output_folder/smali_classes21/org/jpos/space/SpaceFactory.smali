.class public Lorg/jpos/space/SpaceFactory;
.super Ljava/lang/Object;
.source "SpaceFactory.java"


# static fields
.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final JDBM:Ljava/lang/String; = "jdbm"

.field public static final JE:Ljava/lang/String; = "je"

.field public static final PERSISTENT:Ljava/lang/String; = "persistent"

.field public static final SPACELET:Ljava/lang/String; = "spacelet"

.field public static final TRANSIENT:Ljava/lang/String; = "transient"

.field public static final TSPACE:Ljava/lang/String; = "tspace"

.field private static gcExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    invoke-static {}, Lorg/jpos/util/ConcurrentUtil;->newScheduledThreadPoolExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lorg/jpos/space/SpaceFactory;->gcExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/Space;
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "sp":Lorg/jpos/space/Space;
    const-string v1, "tspace"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "transient"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    const-string v1, "jdbm"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "persistent"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 139
    :cond_1
    const-string v1, "je"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    if-eqz p2, :cond_2

    .line 141
    invoke-static {p1, p2}, Lorg/jpos/space/JESpace;->getSpace(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/JESpace;

    move-result-object v0

    goto :goto_2

    .line 143
    :cond_2
    invoke-static {p1}, Lorg/jpos/space/JESpace;->getSpace(Ljava/lang/String;)Lorg/jpos/space/JESpace;

    move-result-object v0

    goto :goto_2

    .line 135
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 136
    invoke-static {p1, p2}, Lorg/jpos/space/JDBMSpace;->getSpace(Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/JDBMSpace;

    move-result-object v0

    goto :goto_2

    .line 138
    :cond_4
    invoke-static {p1}, Lorg/jpos/space/JDBMSpace;->getSpace(Ljava/lang/String;)Lorg/jpos/space/JDBMSpace;

    move-result-object v0

    goto :goto_2

    .line 133
    :cond_5
    :goto_1
    new-instance v1, Lorg/jpos/space/TSpace;

    invoke-direct {v1}, Lorg/jpos/space/TSpace;-><init>()V

    move-object v0, v1

    .line 145
    :cond_6
    :goto_2
    return-object v0
.end method

.method public static getGCExecutor()Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 127
    sget-object v0, Lorg/jpos/space/SpaceFactory;->gcExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method public static getSpace()Lorg/jpos/space/Space;
    .locals 3

    .line 73
    const-string v0, "tspace"

    const-string v1, "default"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    return-object v0
.end method

.method public static getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;
    .locals 6
    .param p0, "spaceUri"    # Ljava/lang/String;

    .line 81
    if-nez p0, :cond_0

    .line 82
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getSpace()Lorg/jpos/space/Space;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    .local v0, "scheme":Ljava/lang/String;
    const/4 v1, 0x0

    .line 86
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 88
    .local v2, "param":Ljava/lang/String;
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ":"

    invoke-direct {v3, p0, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v4

    .line 90
    .local v4, "count":I
    if-nez v4, :cond_1

    .line 91
    const-string v0, "tspace"

    .line 92
    const-string v1, "default"

    goto :goto_0

    .line 94
    :cond_1
    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 95
    const-string v0, "tspace"

    .line 96
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 102
    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 103
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 105
    :cond_3
    invoke-static {v0, v1, v2}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v5

    return-object v5
.end method

.method public static getSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/Space;
    .locals 7
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "sp":Lorg/jpos/space/Space;
    invoke-static {p0, p1, p2}, Lorg/jpos/space/SpaceFactory;->normalize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "uri":Ljava/lang/String;
    const-class v2, Lorg/jpos/space/SpaceFactory;

    monitor-enter v2

    .line 112
    :try_start_0
    invoke-static {v1}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/space/Space;
    :try_end_0
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 113
    :catch_0
    move-exception v3

    .line 114
    .local v3, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :try_start_1
    const-string v4, "spacelet"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "rspace"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 117
    invoke-static {p0, p1, p2}, Lorg/jpos/space/SpaceFactory;->createSpace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v4

    move-object v0, v4

    .line 118
    invoke-static {v1, v0}, Lorg/jpos/util/NameRegistrar;->register(Ljava/lang/String;Ljava/lang/Object;)V

    .line 120
    .end local v3    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :goto_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    if-eqz v0, :cond_0

    .line 124
    return-object v0

    .line 122
    :cond_0
    new-instance v2, Lorg/jpos/space/SpaceError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid space: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 115
    .restart local v3    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :cond_1
    :try_start_2
    new-instance v4, Lorg/jpos/space/SpaceError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/String;)V

    .end local v0    # "sp":Lorg/jpos/space/Space;
    .end local v1    # "uri":Ljava/lang/String;
    .end local p0    # "scheme":Ljava/lang/String;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "param":Ljava/lang/String;
    throw v4

    .line 120
    .end local v3    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    .restart local v0    # "sp":Lorg/jpos/space/Space;
    .restart local v1    # "uri":Ljava/lang/String;
    .restart local p0    # "scheme":Ljava/lang/String;
    .restart local p1    # "name":Ljava/lang/String;
    .restart local p2    # "param":Ljava/lang/String;
    :goto_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method private static normalize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "scheme"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 149
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
