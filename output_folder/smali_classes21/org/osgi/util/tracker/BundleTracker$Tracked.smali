.class final Lorg/osgi/util/tracker/BundleTracker$Tracked;
.super Lorg/osgi/util/tracker/AbstractTracked;
.source "BundleTracker.java"

# interfaces
.implements Lorg/osgi/framework/SynchronousBundleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/util/tracker/BundleTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Tracked"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/osgi/util/tracker/AbstractTracked<",
        "Lorg/osgi/framework/Bundle;",
        "TT;",
        "Lorg/osgi/framework/BundleEvent;",
        ">;",
        "Lorg/osgi/framework/SynchronousBundleListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osgi/util/tracker/BundleTracker;


# direct methods
.method constructor <init>(Lorg/osgi/util/tracker/BundleTracker;)V
    .locals 0

    .line 419
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    iput-object p1, p0, Lorg/osgi/util/tracker/BundleTracker$Tracked;->this$0:Lorg/osgi/util/tracker/BundleTracker;

    .line 420
    invoke-direct {p0}, Lorg/osgi/util/tracker/AbstractTracked;-><init>()V

    .line 421
    return-void
.end method


# virtual methods
.method public bundleChanged(Lorg/osgi/framework/BundleEvent;)V
    .locals 3
    .param p1, "event"    # Lorg/osgi/framework/BundleEvent;

    .line 434
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    iget-boolean v0, p0, Lorg/osgi/util/tracker/BundleTracker$Tracked;->closed:Z

    if-eqz v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    invoke-virtual {p1}, Lorg/osgi/framework/BundleEvent;->getBundle()Lorg/osgi/framework/Bundle;

    move-result-object v0

    .line 438
    .local v0, "bundle":Lorg/osgi/framework/Bundle;
    invoke-interface {v0}, Lorg/osgi/framework/Bundle;->getState()I

    move-result v1

    .line 443
    .local v1, "state":I
    iget-object v2, p0, Lorg/osgi/util/tracker/BundleTracker$Tracked;->this$0:Lorg/osgi/util/tracker/BundleTracker;

    iget v2, v2, Lorg/osgi/util/tracker/BundleTracker;->mask:I

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    .line 444
    invoke-virtual {p0, v0, p1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->track(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 450
    :cond_1
    invoke-virtual {p0, v0, p1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->untrack(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    :goto_0
    return-void
.end method

.method bridge synthetic customizerAdding(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .line 415
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/Bundle;

    move-object v1, p2

    check-cast v1, Lorg/osgi/framework/BundleEvent;

    invoke-virtual {p0, v0, v1}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->customizerAdding(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method customizerAdding(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;)Ljava/lang/Object;
    .locals 1
    .param p1, "item"    # Lorg/osgi/framework/Bundle;
    .param p2, "related"    # Lorg/osgi/framework/BundleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            ")TT;"
        }
    .end annotation

    .line 469
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    iget-object v0, p0, Lorg/osgi/util/tracker/BundleTracker$Tracked;->this$0:Lorg/osgi/util/tracker/BundleTracker;

    iget-object v0, v0, Lorg/osgi/util/tracker/BundleTracker;->customizer:Lorg/osgi/util/tracker/BundleTrackerCustomizer;

    invoke-interface {v0, p1, p2}, Lorg/osgi/util/tracker/BundleTrackerCustomizer;->addingBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic customizerModified(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .line 415
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/Bundle;

    move-object v1, p2

    check-cast v1, Lorg/osgi/framework/BundleEvent;

    invoke-virtual {p0, v0, v1, p3}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->customizerModified(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V

    return-void
.end method

.method customizerModified(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Lorg/osgi/framework/Bundle;
    .param p2, "related"    # Lorg/osgi/framework/BundleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            "TT;)V"
        }
    .end annotation

    .line 482
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/osgi/util/tracker/BundleTracker$Tracked;->this$0:Lorg/osgi/util/tracker/BundleTracker;

    iget-object v0, v0, Lorg/osgi/util/tracker/BundleTracker;->customizer:Lorg/osgi/util/tracker/BundleTrackerCustomizer;

    invoke-interface {v0, p1, p2, p3}, Lorg/osgi/util/tracker/BundleTrackerCustomizer;->modifiedBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V

    .line 483
    return-void
.end method

.method bridge synthetic customizerRemoved(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Ljava/lang/Object;

    .line 415
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/Bundle;

    move-object v1, p2

    check-cast v1, Lorg/osgi/framework/BundleEvent;

    invoke-virtual {p0, v0, v1, p3}, Lorg/osgi/util/tracker/BundleTracker$Tracked;->customizerRemoved(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V

    return-void
.end method

.method customizerRemoved(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V
    .locals 1
    .param p1, "item"    # Lorg/osgi/framework/Bundle;
    .param p2, "related"    # Lorg/osgi/framework/BundleEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/osgi/framework/Bundle;",
            "Lorg/osgi/framework/BundleEvent;",
            "TT;)V"
        }
    .end annotation

    .line 495
    .local p0, "this":Lorg/osgi/util/tracker/BundleTracker$Tracked;, "Lorg/osgi/util/tracker/BundleTracker<TT;>.Tracked;"
    .local p3, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lorg/osgi/util/tracker/BundleTracker$Tracked;->this$0:Lorg/osgi/util/tracker/BundleTracker;

    iget-object v0, v0, Lorg/osgi/util/tracker/BundleTracker;->customizer:Lorg/osgi/util/tracker/BundleTrackerCustomizer;

    invoke-interface {v0, p1, p2, p3}, Lorg/osgi/util/tracker/BundleTrackerCustomizer;->removedBundle(Lorg/osgi/framework/Bundle;Lorg/osgi/framework/BundleEvent;Ljava/lang/Object;)V

    .line 496
    return-void
.end method
