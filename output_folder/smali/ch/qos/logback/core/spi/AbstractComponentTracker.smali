.class public abstract Lch/qos/logback/core/spi/AbstractComponentTracker;
.super Ljava/lang/Object;
.source "AbstractComponentTracker.java"

# interfaces
.implements Lch/qos/logback/core/spi/ComponentTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;,
        Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lch/qos/logback/core/spi/ComponentTracker<",
        "TC;>;"
    }
.end annotation


# static fields
.field private static final ACCESS_ORDERED:Z = true

.field public static final LINGERING_TIMEOUT:J = 0x2710L

.field public static final WAIT_BETWEEN_SUCCESSIVE_REMOVAL_ITERATIONS:J = 0x3e8L


# instance fields
.field private byExcedent:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator<",
            "TC;>;"
        }
    .end annotation
.end field

.field private byLingering:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator<",
            "TC;>;"
        }
    .end annotation
.end field

.field private byTimeout:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator<",
            "TC;>;"
        }
    .end annotation
.end field

.field lastCheck:J

.field lingerersMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field liveMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field protected maxComponents:I

.field protected timeout:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 31
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->maxComponents:I

    .line 43
    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->timeout:J

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    .line 49
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lastCheck:J

    .line 187
    new-instance v0, Lch/qos/logback/core/spi/AbstractComponentTracker$1;

    invoke-direct {v0, p0}, Lch/qos/logback/core/spi/AbstractComponentTracker$1;-><init>(Lch/qos/logback/core/spi/AbstractComponentTracker;)V

    iput-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->byExcedent:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;

    .line 193
    new-instance v0, Lch/qos/logback/core/spi/AbstractComponentTracker$2;

    invoke-direct {v0, p0}, Lch/qos/logback/core/spi/AbstractComponentTracker$2;-><init>(Lch/qos/logback/core/spi/AbstractComponentTracker;)V

    iput-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->byTimeout:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;

    .line 198
    new-instance v0, Lch/qos/logback/core/spi/AbstractComponentTracker$3;

    invoke-direct {v0, p0}, Lch/qos/logback/core/spi/AbstractComponentTracker$3;-><init>(Lch/qos/logback/core/spi/AbstractComponentTracker;)V

    iput-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->byLingering:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;

    .line 264
    return-void
.end method

.method static synthetic access$000(Lch/qos/logback/core/spi/AbstractComponentTracker;Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/core/spi/AbstractComponentTracker;
    .param p1, "x1"    # Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;
    .param p2, "x2"    # J

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lch/qos/logback/core/spi/AbstractComponentTracker;->isEntryStale(Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lch/qos/logback/core/spi/AbstractComponentTracker;Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z
    .locals 1
    .param p0, "x0"    # Lch/qos/logback/core/spi/AbstractComponentTracker;
    .param p1, "x1"    # Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;
    .param p2, "x2"    # J

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lch/qos/logback/core/spi/AbstractComponentTracker;->isEntryDoneLingering(Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z

    move-result v0

    return v0
.end method

.method private genericStaleComponentRemover(Ljava/util/LinkedHashMap;JLch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;)V
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<",
            "TC;>;>;J",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator<",
            "TC;>;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    .local p1, "map":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;>;"
    .local p4, "removalPredicator":Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;, "Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator<TC;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 174
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 176
    .local v1, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    .line 177
    .local v2, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    invoke-interface {p4, v2, p2, p3}, Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;->isSlatedForRemoval(Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 179
    iget-object v3, v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    .line 180
    .local v3, "c":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0, v3}, Lch/qos/logback/core/spi/AbstractComponentTracker;->processPriorToRemoval(Ljava/lang/Object;)V

    .line 184
    .end local v1    # "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;>;"
    .end local v2    # "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    .end local v3    # "c":Ljava/lang/Object;, "TC;"
    goto :goto_0

    .line 185
    :cond_0
    return-void
.end method

.method private getFromEitherMap(Ljava/lang/String;)Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<",
            "TC;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    .line 88
    .local v0, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    if-eqz v0, :cond_0

    .line 89
    return-object v0

    .line 91
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    return-object v1
.end method

.method private isEntryDoneLingering(Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z
    .locals 4
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<",
            "TC;>;J)Z"
        }
    .end annotation

    .line 223
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    .local p1, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iget-wide v0, p1, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->timestamp:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    cmp-long v0, v0, p2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEntryStale(Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z
    .locals 7
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<",
            "TC;>;J)Z"
        }
    .end annotation

    .line 215
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    .local p1, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iget-object v0, p1, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    .line 216
    .local v0, "c":Ljava/lang/Object;, "TC;"
    invoke-virtual {p0, v0}, Lch/qos/logback/core/spi/AbstractComponentTracker;->isComponentStale(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 217
    return v2

    .line 219
    :cond_0
    iget-wide v3, p1, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->timestamp:J

    iget-wide v5, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->timeout:J

    add-long/2addr v3, v5

    cmp-long v1, v3, p2

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isTooSoonForRemovalIteration(J)Z
    .locals 4
    .param p1, "now"    # J

    .line 205
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-wide v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lastCheck:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 206
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_0
    iput-wide p1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lastCheck:J

    .line 209
    const/4 v0, 0x0

    return v0
.end method

.method private removeExcedentComponents()V
    .locals 4

    .line 161
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->byExcedent:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lch/qos/logback/core/spi/AbstractComponentTracker;->genericStaleComponentRemover(Ljava/util/LinkedHashMap;JLch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;)V

    .line 162
    return-void
.end method

.method private removeStaleComponentsFromLingerersMap(J)V
    .locals 2
    .param p1, "now"    # J

    .line 169
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->byLingering:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;

    invoke-direct {p0, v0, p1, p2, v1}, Lch/qos/logback/core/spi/AbstractComponentTracker;->genericStaleComponentRemover(Ljava/util/LinkedHashMap;JLch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;)V

    .line 170
    return-void
.end method

.method private removeStaleComponentsFromMainMap(J)V
    .locals 2
    .param p1, "now"    # J

    .line 165
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->byTimeout:Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;

    invoke-direct {p0, v0, p1, p2, v1}, Lch/qos/logback/core/spi/AbstractComponentTracker;->genericStaleComponentRemover(Ljava/util/LinkedHashMap;JLch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;)V

    .line 166
    return-void
.end method


# virtual methods
.method public allComponents()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v0, "allComponents":Ljava/util/List;, "Ljava/util/List<TC;>;"
    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    .line 235
    .local v2, "e":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iget-object v3, v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 236
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "e":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    .line 237
    .restart local v2    # "e":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iget-object v3, v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 239
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "e":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    :cond_1
    return-object v0
.end method

.method public allKeys()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 228
    .local v0, "allKeys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 229
    return-object v0
.end method

.method protected abstract buildComponent(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method

.method public endOfLife(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 140
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    .line 141
    .local v0, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    if-nez v0, :cond_0

    .line 142
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    return-void
.end method

.method public declared-synchronized find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation

    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    monitor-enter p0

    .line 105
    :try_start_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/spi/AbstractComponentTracker;->getFromEitherMap(Ljava/lang/String;)Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .local v0, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    if-nez v0, :cond_0

    .line 107
    const/4 v1, 0x0

    monitor-exit p0

    return-object v1

    .line 109
    :cond_0
    :try_start_1
    iget-object v1, v0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 104
    .end local v0    # "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    .end local p0    # "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getComponentCount()I
    .locals 2

    .line 77
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->lingerersMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getMaxComponents()I
    .locals 1

    .line 251
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->maxComponents:I

    return v0
.end method

.method public declared-synchronized getOrCreate(Ljava/lang/String;J)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TC;"
        }
    .end annotation

    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    monitor-enter p0

    .line 122
    :try_start_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/spi/AbstractComponentTracker;->getFromEitherMap(Ljava/lang/String;)Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    move-result-object v0

    .line 123
    .local v0, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0, p1}, Lch/qos/logback/core/spi/AbstractComponentTracker;->buildComponent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    .local v1, "c":Ljava/lang/Object;, "TC;"
    new-instance v2, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;

    invoke-direct {v2, p1, v1, p2, p3}, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;-><init>(Ljava/lang/String;Ljava/lang/Object;J)V

    move-object v0, v2

    .line 127
    iget-object v2, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    nop

    .end local v1    # "c":Ljava/lang/Object;, "TC;"
    goto :goto_0

    .line 129
    .end local p0    # "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    :cond_0
    invoke-virtual {v0, p2, p3}, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->setTimestamp(J)V

    .line 131
    :goto_0
    iget-object v1, v0, Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;->component:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 121
    .end local v0    # "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "timestamp":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getTimeout()J
    .locals 2

    .line 243
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iget-wide v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->timeout:J

    return-wide v0
.end method

.method protected abstract isComponentStale(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation
.end method

.method protected abstract processPriorToRemoval(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)V"
        }
    .end annotation
.end method

.method public declared-synchronized removeStaleComponents(J)V
    .locals 1
    .param p1, "now"    # J

    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    monitor-enter p0

    .line 153
    :try_start_0
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/spi/AbstractComponentTracker;->isTooSoonForRemovalIteration(J)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 154
    monitor-exit p0

    return-void

    .line 155
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lch/qos/logback/core/spi/AbstractComponentTracker;->removeExcedentComponents()V

    .line 156
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/spi/AbstractComponentTracker;->removeStaleComponentsFromMainMap(J)V

    .line 157
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/spi/AbstractComponentTracker;->removeStaleComponentsFromLingerersMap(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 158
    monitor-exit p0

    return-void

    .line 152
    .end local p0    # "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    .end local p1    # "now":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMaxComponents(I)V
    .locals 0
    .param p1, "maxComponents"    # I

    .line 255
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iput p1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->maxComponents:I

    .line 256
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 247
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker;, "Lch/qos/logback/core/spi/AbstractComponentTracker<TC;>;"
    iput-wide p1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker;->timeout:J

    .line 248
    return-void
.end method
