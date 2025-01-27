.class Lorg/osgi/util/tracker/ServiceTracker$Tracked;
.super Lorg/osgi/util/tracker/AbstractTracked;
.source "ServiceTracker.java"

# interfaces
.implements Lorg/osgi/framework/ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/util/tracker/ServiceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tracked"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osgi/util/tracker/AbstractTracked<",
        "Lorg/osgi/framework/ServiceReference<",
        "TS;>;TT;",
        "Lorg/osgi/framework/ServiceEvent;",
        ">;",
        "Lorg/osgi/framework/ServiceListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osgi/util/tracker/ServiceTracker;


# direct methods
.method constructor <init>(Lorg/osgi/util/tracker/ServiceTracker;)V
    .locals 0

    .line 874
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    iput-object p1, p0, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->this$0:Lorg/osgi/util/tracker/ServiceTracker;

    .line 875
    invoke-direct {p0}, Lorg/osgi/util/tracker/AbstractTracked;-><init>()V

    .line 876
    return-void
.end method


# virtual methods
.method bridge synthetic customizerAdding(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 870
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/ServiceReference;

    move-object v1, p2

    check-cast v1, Lorg/osgi/framework/ServiceEvent;

    invoke-virtual {p0, v0, v1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->customizerAdding(Lorg/osgi/framework/ServiceReference;Lorg/osgi/framework/ServiceEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method final customizerAdding(Lorg/osgi/framework/ServiceReference;Lorg/osgi/framework/ServiceEvent;)Ljava/lang/Object;
    .locals 1
    .param p2, "related"    # Lorg/osgi/framework/ServiceEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;",
            "Lorg/osgi/framework/ServiceEvent;",
            ")TT;"
        }
    .end annotation

    .line 941
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .local p1, "item":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->this$0:Lorg/osgi/util/tracker/ServiceTracker;

    iget-object v0, v0, Lorg/osgi/util/tracker/ServiceTracker;->customizer:Lorg/osgi/util/tracker/ServiceTrackerCustomizer;

    invoke-interface {v0, p1}, Lorg/osgi/util/tracker/ServiceTrackerCustomizer;->addingService(Lorg/osgi/framework/ServiceReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic customizerModified(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .line 870
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/ServiceReference;

    move-object v1, p2

    check-cast v1, Lorg/osgi/framework/ServiceEvent;

    invoke-virtual {p0, v0, v1, p3}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->customizerModified(Lorg/osgi/framework/ServiceReference;Lorg/osgi/framework/ServiceEvent;Ljava/lang/Object;)V

    return-void
.end method

.method final customizerModified(Lorg/osgi/framework/ServiceReference;Lorg/osgi/framework/ServiceEvent;Ljava/lang/Object;)V
    .locals 1
    .param p2, "related"    # Lorg/osgi/framework/ServiceEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;",
            "Lorg/osgi/framework/ServiceEvent;",
            "TT;)V"
        }
    .end annotation

    .line 954
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .local p1, "item":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->this$0:Lorg/osgi/util/tracker/ServiceTracker;

    iget-object v0, v0, Lorg/osgi/util/tracker/ServiceTracker;->customizer:Lorg/osgi/util/tracker/ServiceTrackerCustomizer;

    invoke-interface {v0, p1, p3}, Lorg/osgi/util/tracker/ServiceTrackerCustomizer;->modifiedService(Lorg/osgi/framework/ServiceReference;Ljava/lang/Object;)V

    .line 955
    return-void
.end method

.method bridge synthetic customizerRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .line 870
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/ServiceReference;

    move-object v1, p2

    check-cast v1, Lorg/osgi/framework/ServiceEvent;

    invoke-virtual {p0, v0, v1, p3}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->customizerRemoved(Lorg/osgi/framework/ServiceReference;Lorg/osgi/framework/ServiceEvent;Ljava/lang/Object;)V

    return-void
.end method

.method final customizerRemoved(Lorg/osgi/framework/ServiceReference;Lorg/osgi/framework/ServiceEvent;Ljava/lang/Object;)V
    .locals 1
    .param p2, "related"    # Lorg/osgi/framework/ServiceEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/ServiceReference<",
            "TS;>;",
            "Lorg/osgi/framework/ServiceEvent;",
            "TT;)V"
        }
    .end annotation

    .line 967
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    .local p1, "item":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->this$0:Lorg/osgi/util/tracker/ServiceTracker;

    iget-object v0, v0, Lorg/osgi/util/tracker/ServiceTracker;->customizer:Lorg/osgi/util/tracker/ServiceTrackerCustomizer;

    invoke-interface {v0, p1, p3}, Lorg/osgi/util/tracker/ServiceTrackerCustomizer;->removedService(Lorg/osgi/framework/ServiceReference;Ljava/lang/Object;)V

    .line 968
    return-void
.end method

.method final modified()V
    .locals 1

    .line 926
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    invoke-super {p0}, Lorg/osgi/util/tracker/AbstractTracked;->modified()V

    .line 927
    iget-object v0, p0, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->this$0:Lorg/osgi/util/tracker/ServiceTracker;

    invoke-virtual {v0}, Lorg/osgi/util/tracker/ServiceTracker;->modified()V

    .line 928
    return-void
.end method

.method public final serviceChanged(Lorg/osgi/framework/ServiceEvent;)V
    .locals 2
    .param p1, "event"    # Lorg/osgi/framework/ServiceEvent;

    .line 889
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$Tracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.Tracked;"
    iget-boolean v0, p0, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->closed:Z

    if-eqz v0, :cond_0

    .line 890
    return-void

    .line 893
    :cond_0
    invoke-virtual {p1}, Lorg/osgi/framework/ServiceEvent;->getServiceReference()Lorg/osgi/framework/ServiceReference;

    move-result-object v0

    .line 898
    .local v0, "reference":Lorg/osgi/framework/ServiceReference;, "Lorg/osgi/framework/ServiceReference<TS;>;"
    invoke-virtual {p1}, Lorg/osgi/framework/ServiceEvent;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 909
    :sswitch_0
    invoke-virtual {p0, v0, p1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->untrack(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 901
    :sswitch_1
    invoke-virtual {p0, v0, p1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;->track(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 906
    nop

    .line 916
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method
