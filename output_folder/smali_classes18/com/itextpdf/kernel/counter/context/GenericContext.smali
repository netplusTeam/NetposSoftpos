.class public Lcom/itextpdf/kernel/counter/context/GenericContext;
.super Ljava/lang/Object;
.source "GenericContext.java"

# interfaces
.implements Lcom/itextpdf/kernel/counter/context/IContext;


# instance fields
.field private final supported:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 60
    .local p1, "supported":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/counter/context/GenericContext;->supported:Ljava/util/Set;

    .line 62
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public allow(Lcom/itextpdf/kernel/counter/event/IEvent;)Z
    .locals 2
    .param p1, "event"    # Lcom/itextpdf/kernel/counter/event/IEvent;

    .line 67
    instance-of v0, p1, Lcom/itextpdf/kernel/counter/event/IGenericEvent;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/itextpdf/kernel/counter/context/GenericContext;->supported:Ljava/util/Set;

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/counter/event/IGenericEvent;

    invoke-interface {v1}, Lcom/itextpdf/kernel/counter/event/IGenericEvent;->getOriginId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
