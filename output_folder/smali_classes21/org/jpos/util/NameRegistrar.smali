.class public Lorg/jpos/util/NameRegistrar;
.super Ljava/lang/Object;
.source "NameRegistrar.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/util/NameRegistrar$NotFoundException;
    }
.end annotation


# static fields
.field private static final instance:Lorg/jpos/util/NameRegistrar;

.field private static final sp:Lorg/jpos/space/TSpace;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jpos/space/TSpace<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lorg/jpos/util/NameRegistrar;

    invoke-direct {v0}, Lorg/jpos/util/NameRegistrar;-><init>()V

    sput-object v0, Lorg/jpos/util/NameRegistrar;->instance:Lorg/jpos/util/NameRegistrar;

    .line 36
    new-instance v0, Lorg/jpos/space/TSpace;

    invoke-direct {v0}, Lorg/jpos/space/TSpace;-><init>()V

    sput-object v0, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/util/NameRegistrar$NotFoundException;
        }
    .end annotation

    .line 108
    sget-object v0, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v0, p0}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 109
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 112
    return-object v0

    .line 110
    :cond_0
    new-instance v1, Lorg/jpos/util/NameRegistrar$NotFoundException;

    invoke-direct {v1, p0}, Lorg/jpos/util/NameRegistrar$NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 125
    sget-object v0, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v0, p0, p1, p2}, Lorg/jpos/space/TSpace;->rd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getAsMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 63
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v1}, Lorg/jpos/space/TSpace;->getKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, "k":Ljava/lang/String;
    sget-object v3, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v3, v2}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 65
    .local v3, "v":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 68
    :cond_1
    return-object v0
.end method

.method public static getIfExists(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 137
    sget-object v0, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v0, p0}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    return-object v0
.end method

.method public static getInstance()Lorg/jpos/util/NameRegistrar;
    .locals 1

    .line 75
    sget-object v0, Lorg/jpos/util/NameRegistrar;->instance:Lorg/jpos/util/NameRegistrar;

    return-object v0
.end method

.method public static getSpace()Lorg/jpos/space/TSpace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jpos/space/TSpace<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 55
    sget-object v0, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    return-object v0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .line 87
    sget-object v0, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v0, p0, p1}, Lorg/jpos/space/TSpace;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 95
    sget-object v0, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-static {v0, p0}, Lorg/jpos/space/SpaceUtil;->wipe(Lorg/jpos/space/Space;Ljava/lang/Object;)V

    .line 96
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jpos/util/NameRegistrar;->dump(Ljava/io/PrintStream;Ljava/lang/String;Z)V

    .line 143
    return-void
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "detail"    # Z

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "inner":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "name-registrar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    sget-object v2, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v2}, Lorg/jpos/space/TSpace;->getKeySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 149
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lorg/jpos/util/NameRegistrar;->sp:Lorg/jpos/space/TSpace;

    invoke-virtual {v4, v3}, Lorg/jpos/space/TSpace;->rdp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 150
    .local v4, "obj":Ljava/lang/Object;
    if-nez v4, :cond_0

    const-string v5, "<NULL>"

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    .line 151
    .local v5, "objectClassName":Ljava/lang/String;
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    if-eqz p3, :cond_1

    instance-of v6, v4, Lorg/jpos/util/Loggeable;

    if-eqz v6, :cond_1

    .line 153
    move-object v6, v4

    check-cast v6, Lorg/jpos/util/Loggeable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, p1, v7}, Lorg/jpos/util/Loggeable;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 155
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "obj":Ljava/lang/Object;
    .end local v5    # "objectClassName":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 156
    :cond_2
    return-void
.end method
