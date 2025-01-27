.class public Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
.super Ljava/lang/Object;
.source "MapEntryUtils.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/MapEntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GenericMapPopulator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "M::",
        "Ljava/util/Map<",
        "TK;TV;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TM;>;"
    }
.end annotation


# instance fields
.field private final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 62
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;, "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<TK;TV;TM;>;"
    .local p1, "map":Ljava/util/Map;, "TM;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const-string v0, "No map provided"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->map:Ljava/util/Map;

    .line 64
    return-void
.end method


# virtual methods
.method public clear()Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<",
            "TK;TV;TM;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;, "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<TK;TV;TM;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 83
    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 59
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;, "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<TK;TV;TM;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public get()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;, "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<TK;TV;TM;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->map:Ljava/util/Map;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<",
            "TK;TV;TM;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;, "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<TK;TV;TM;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-object p0
.end method

.method public putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<",
            "TK;TV;TM;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;, "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<TK;TV;TM;>;"
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 78
    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<",
            "TK;TV;TM;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;, "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<TK;TV;TM;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-object p0
.end method
