.class final Lorg/jctools/maps/NonBlockingHashMap$Prime;
.super Ljava/lang/Object;
.source "NonBlockingHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Prime"
.end annotation


# instance fields
.field final _V:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "V"    # Ljava/lang/Object;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$Prime;->_V:Ljava/lang/Object;

    return-void
.end method

.method static unbox(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "V"    # Ljava/lang/Object;

    .line 113
    instance-of v0, p0, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/jctools/maps/NonBlockingHashMap$Prime;

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingHashMap$Prime;->_V:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
