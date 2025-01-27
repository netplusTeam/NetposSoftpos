.class Lorg/osgi/util/tracker/ServiceTracker$AllTracked;
.super Lorg/osgi/util/tracker/ServiceTracker$Tracked;
.source "ServiceTracker.java"

# interfaces
.implements Lorg/osgi/framework/AllServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osgi/util/tracker/ServiceTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AllTracked"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/osgi/util/tracker/ServiceTracker;


# direct methods
.method constructor <init>(Lorg/osgi/util/tracker/ServiceTracker;)V
    .locals 0

    .line 982
    .local p0, "this":Lorg/osgi/util/tracker/ServiceTracker$AllTracked;, "Lorg/osgi/util/tracker/ServiceTracker<TS;TT;>.AllTracked;"
    iput-object p1, p0, Lorg/osgi/util/tracker/ServiceTracker$AllTracked;->this$0:Lorg/osgi/util/tracker/ServiceTracker;

    .line 983
    invoke-direct {p0, p1}, Lorg/osgi/util/tracker/ServiceTracker$Tracked;-><init>(Lorg/osgi/util/tracker/ServiceTracker;)V

    .line 984
    return-void
.end method
