.class Lch/qos/logback/core/spi/AbstractComponentTracker$1;
.super Ljava/lang/Object;
.source "AbstractComponentTracker.java"

# interfaces
.implements Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/qos/logback/core/spi/AbstractComponentTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lch/qos/logback/core/spi/AbstractComponentTracker$RemovalPredicator<",
        "TC;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lch/qos/logback/core/spi/AbstractComponentTracker;


# direct methods
.method constructor <init>(Lch/qos/logback/core/spi/AbstractComponentTracker;)V
    .locals 0

    .line 187
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker$1;, "Lch/qos/logback/core/spi/AbstractComponentTracker.1;"
    iput-object p1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$1;->this$0:Lch/qos/logback/core/spi/AbstractComponentTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSlatedForRemoval(Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;J)Z
    .locals 2
    .param p2, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<",
            "TC;>;J)Z"
        }
    .end annotation

    .line 189
    .local p0, "this":Lch/qos/logback/core/spi/AbstractComponentTracker$1;, "Lch/qos/logback/core/spi/AbstractComponentTracker.1;"
    .local p1, "entry":Lch/qos/logback/core/spi/AbstractComponentTracker$Entry;, "Lch/qos/logback/core/spi/AbstractComponentTracker$Entry<TC;>;"
    iget-object v0, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$1;->this$0:Lch/qos/logback/core/spi/AbstractComponentTracker;

    iget-object v0, v0, Lch/qos/logback/core/spi/AbstractComponentTracker;->liveMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    iget-object v1, p0, Lch/qos/logback/core/spi/AbstractComponentTracker$1;->this$0:Lch/qos/logback/core/spi/AbstractComponentTracker;

    iget v1, v1, Lch/qos/logback/core/spi/AbstractComponentTracker;->maxComponents:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
