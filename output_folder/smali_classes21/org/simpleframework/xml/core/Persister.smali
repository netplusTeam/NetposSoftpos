.class public Lorg/simpleframework/xml/core/Persister;
.super Ljava/lang/Object;
.source "Persister.java"

# interfaces
.implements Lorg/simpleframework/xml/Serializer;


# instance fields
.field private final format:Lorg/simpleframework/xml/stream/Format;

.field private final manager:Lorg/simpleframework/xml/core/SessionManager;

.field private final strategy:Lorg/simpleframework/xml/strategy/Strategy;

.field private final support:Lorg/simpleframework/xml/core/Support;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Ljava/util/Map;)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1, "filter"    # Ljava/util/Map;

    .line 121
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 122
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "filter"    # Ljava/util/Map;
    .param p2, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 135
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p1}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/filter/Filter;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1
    .param p1, "filter"    # Lorg/simpleframework/xml/filter/Filter;

    .line 147
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p2, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 160
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1
    .param p1, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p2, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;

    .line 227
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p2, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 241
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;)V

    .line 201
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "data"    # Ljava/util/Map;

    .line 259
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V

    .line 260
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "data"    # Ljava/util/Map;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 277
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0, p2}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "filter"    # Lorg/simpleframework/xml/filter/Filter;

    .line 294
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 312
    new-instance v0, Lorg/simpleframework/xml/core/EmptyMatcher;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/EmptyMatcher;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p3, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;

    .line 368
    new-instance v0, Lorg/simpleframework/xml/stream/Format;

    invoke-direct {v0}, Lorg/simpleframework/xml/stream/Format;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 369
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "filter"    # Lorg/simpleframework/xml/filter/Filter;
    .param p3, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;
    .param p4, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    new-instance v0, Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, p2, p3, p4}, Lorg/simpleframework/xml/core/Support;-><init>(Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    .line 388
    new-instance v0, Lorg/simpleframework/xml/core/SessionManager;

    invoke-direct {v0}, Lorg/simpleframework/xml/core/SessionManager;-><init>()V

    iput-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    .line 389
    iput-object p1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    .line 390
    iput-object p4, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    .line 391
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 214
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Ljava/util/Map;Lorg/simpleframework/xml/stream/Format;)V

    .line 215
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;

    .line 330
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 331
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "strategy"    # Lorg/simpleframework/xml/strategy/Strategy;
    .param p2, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;
    .param p3, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 349
    new-instance v0, Lorg/simpleframework/xml/filter/PlatformFilter;

    invoke-direct {v0}, Lorg/simpleframework/xml/filter/PlatformFilter;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/filter/Filter;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 108
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/stream/Format;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;)V
    .locals 1
    .param p1, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;

    .line 173
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V
    .locals 1
    .param p1, "matcher"    # Lorg/simpleframework/xml/transform/Matcher;
    .param p2, "format"    # Lorg/simpleframework/xml/stream/Format;

    .line 187
    new-instance v0, Lorg/simpleframework/xml/strategy/TreeStrategy;

    invoke-direct {v0}, Lorg/simpleframework/xml/strategy/TreeStrategy;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/simpleframework/xml/core/Persister;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/transform/Matcher;Lorg/simpleframework/xml/stream/Format;)V

    .line 188
    return-void
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 625
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .locals 3
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "session"    # Lorg/simpleframework/xml/core/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Session;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 606
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, v2, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;
    .locals 1
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Context;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 872
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->read(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;
    .locals 3
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "session"    # Lorg/simpleframework/xml/core/Session;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Lorg/simpleframework/xml/core/Session;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 852
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, v2, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1119
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->validate(Lorg/simpleframework/xml/stream/InputNode;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method private validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "session"    # Lorg/simpleframework/xml/core/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1099
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, v2, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Context;)Z

    move-result v0

    return v0
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p3, "context"    # Lorg/simpleframework/xml/core/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1180
    new-instance v0, Lorg/simpleframework/xml/core/Traverser;

    invoke-direct {v0, p3}, Lorg/simpleframework/xml/core/Traverser;-><init>(Lorg/simpleframework/xml/core/Context;)V

    invoke-virtual {v0, p2, p1}, Lorg/simpleframework/xml/core/Traverser;->write(Lorg/simpleframework/xml/stream/OutputNode;Ljava/lang/Object;)V

    .line 1181
    return-void
.end method

.method private write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "root"    # Lorg/simpleframework/xml/stream/OutputNode;
    .param p3, "session"    # Lorg/simpleframework/xml/core/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1162
    new-instance v0, Lorg/simpleframework/xml/core/Source;

    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->strategy:Lorg/simpleframework/xml/strategy/Strategy;

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->support:Lorg/simpleframework/xml/core/Support;

    invoke-direct {v0, v1, v2, p3}, Lorg/simpleframework/xml/core/Source;-><init>(Lorg/simpleframework/xml/strategy/Strategy;Lorg/simpleframework/xml/core/Support;Lorg/simpleframework/xml/core/Session;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Context;)V

    .line 1163
    return-void
.end method


# virtual methods
.method public read(Ljava/lang/Class;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 426
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/File;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/File;Z)Ljava/lang/Object;
    .locals 2
    .param p2, "source"    # Ljava/io/File;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/File;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 518
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 521
    .local v0, "file":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public read(Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 444
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/InputStream;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 543
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 462
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/Reader;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/io/Reader;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 562
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 408
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 499
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 480
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 581
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 584
    .local v0, "session":Lorg/simpleframework/xml/core/Session;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v1
.end method

.method public read(Ljava/lang/Object;Ljava/io/File;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/File;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 663
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/File;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/File;Z)Ljava/lang/Object;
    .locals 2
    .param p2, "source"    # Ljava/io/File;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/File;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 760
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 763
    .local v0, "file":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 765
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public read(Ljava/lang/Object;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 682
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/InputStream;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/InputStream;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/InputStream;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 786
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 701
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/io/Reader;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/io/Reader;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 806
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 644
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 740
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Ljava/io/Reader;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;)Ljava/lang/Object;
    .locals 1
    .param p2, "source"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 720
    .local p1, "value":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Z)Ljava/lang/Object;
    .locals 3
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/simpleframework/xml/stream/InputNode;",
            "Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 826
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 829
    .local v0, "session":Lorg/simpleframework/xml/core/Session;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->read(Ljava/lang/Object;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v1
.end method

.method public validate(Ljava/lang/Class;Ljava/io/File;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 910
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/File;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/File;Z)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/io/File;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1007
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1010
    .local v0, "file":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method

.method public validate(Ljava/lang/Class;Ljava/io/InputStream;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 929
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/InputStream;Z)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/io/InputStream;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1033
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/InputStream;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/Reader;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 948
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/io/Reader;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1053
    invoke-static {p2}, Lorg/simpleframework/xml/stream/NodeBuilder;->read(Ljava/io/Reader;)Lorg/simpleframework/xml/stream/InputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 891
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 987
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Ljava/io/Reader;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "source"    # Lorg/simpleframework/xml/stream/InputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 967
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z

    move-result v0

    return v0
.end method

.method public validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Z)Z
    .locals 3
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "node"    # Lorg/simpleframework/xml/stream/InputNode;
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1073
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0, p3}, Lorg/simpleframework/xml/core/SessionManager;->open(Z)Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 1076
    .local v0, "session":Lorg/simpleframework/xml/core/Session;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->validate(Ljava/lang/Class;Lorg/simpleframework/xml/stream/InputNode;Lorg/simpleframework/xml/core/Session;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1078
    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    return v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v1
.end method

.method public write(Ljava/lang/Object;Ljava/io/File;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1198
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1201
    .local v0, "file":Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 1204
    nop

    .line 1205
    return-void

    .line 1203
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    throw v1
.end method

.method public write(Ljava/lang/Object;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1222
    const-string v0, "utf-8"

    invoke-virtual {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1223
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "charset"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1241
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 1242
    return-void
.end method

.method public write(Ljava/lang/Object;Ljava/io/Writer;)V
    .locals 1
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1259
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->format:Lorg/simpleframework/xml/stream/Format;

    invoke-static {p2, v0}, Lorg/simpleframework/xml/stream/NodeBuilder;->write(Ljava/io/Writer;Lorg/simpleframework/xml/stream/Format;)Lorg/simpleframework/xml/stream/OutputNode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V

    .line 1260
    return-void
.end method

.method public write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "root"    # Lorg/simpleframework/xml/stream/OutputNode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1137
    iget-object v0, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v0}, Lorg/simpleframework/xml/core/SessionManager;->open()Lorg/simpleframework/xml/core/Session;

    move-result-object v0

    .line 1140
    .local v0, "session":Lorg/simpleframework/xml/core/Session;
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lorg/simpleframework/xml/core/Persister;->write(Ljava/lang/Object;Lorg/simpleframework/xml/stream/OutputNode;Lorg/simpleframework/xml/core/Session;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1142
    iget-object v1, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v1}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    .line 1143
    nop

    .line 1144
    return-void

    .line 1142
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lorg/simpleframework/xml/core/Persister;->manager:Lorg/simpleframework/xml/core/SessionManager;

    invoke-virtual {v2}, Lorg/simpleframework/xml/core/SessionManager;->close()V

    throw v1
.end method
